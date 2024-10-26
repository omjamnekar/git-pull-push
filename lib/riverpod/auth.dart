import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:git_up_push/model/User.dart';
import 'package:git_up_push/riverpod/share/user_prefer.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider extends StateNotifier<UserBase> {
  AuthProvider()
      : super(UserBase.withUuid(
          name: 'Guest',
          email: "",
          imageUrl: "",
          password: "",
          auth: AuthUser(isAuth: false, time: DateTime.now()),
        ));
  final FirebaseAuth _auth = FirebaseAuth.instance;
  UserPreferences userPreferences = UserPreferences();
  Future<UserBase?> checkAuth() async {
    return await userPreferences.getUser();
  }

  Future<bool> signup(
      String email, String password, BuildContext context) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      //initialization of userRegistration
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // creating pipline
      UserBase userBase = UserBase(
        name: "OM",
        imageUrl: "",
        email: email,
        password: password,
        auth: AuthUser(
          isAuth: true,
          time: DateTime.now(),
        ),
      );

      // save user in memory
      if (mounted) {
        await userPreferences.removeUser();
        await userPreferences.saveUser(userBase);
      }

      return true;
    } on FirebaseAuthException catch (e) {
      if (mounted) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('The password provided is too weak.')));
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('The account already exists for that email.')));
        }
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
    return false;
  }

  Future<bool> signIn(
      String email, String password, BuildContext context) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // creating pipline
      UserBase userBase = UserBase(
        name: "OM",
        email: email,
        imageUrl: '',
        password: password,
        auth: AuthUser(
          isAuth: true,
          time: DateTime.now(),
        ),
      );

      // save user in memory
      if (mounted) {
        await userPreferences.removeUser();
        await userPreferences.saveUser(userBase);
      }

      return true;
    } on FirebaseAuthException catch (e) {
      if (mounted) {
        if (e.code == 'user-not-found') {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('No user found for that email.')));
        } else if (e.code == 'wrong-password') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Wrong password provided for that user.')));
        }
      }
      return false;
    } catch (e) {
      print(e);

      return false;
    }
  }

  Future<bool> googleSignIn() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        // The user canceled the sign-in
        return false;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      if (userCredential.user!.email != null) {
        // creating pipline
        UserBase userBase = UserBase(
          id: userCredential.user!.uid,
          name: "OM",
          email: userCredential.user!.email ?? "",
          password: userCredential.user!.displayName ?? "",
          auth: AuthUser(
            isAuth: true,
            time: DateTime.now(),
          ),
          imageUrl: '',
        );

        // save user in memory
        if (mounted) {
          await userPreferences.removeUser();
          await userPreferences.saveUser(userBase);
        }
      }
      return true;
    } catch (e) {
      print(e);

      return false;
    }
  }

  Future<bool> signInWithGitHub() async {
    try {
      // Ensure environment variables are loaded
      await dotenv.load(fileName: 'assets/.env');

      final clientId = dotenv.env['GITHUB_CLIENT_ID'];
      final redirectUrl = dotenv.env['REDIRECT_URL'];

      if (clientId == null || redirectUrl == null) {
        throw Exception(
            'GitHub client ID or redirect URL is not set in environment variables');
      }

      // Initiate the GitHub OAuth authentication process
      final result = await FlutterWebAuth.authenticate(
        url:
            'https://github.com/login/oauth/authorize?client_id=$clientId&redirect_uri=$redirectUrl&scope=read:user',
        callbackUrlScheme: 'yourapp', // Use your custom URL scheme
      );

      // Extract the authorization code from the result
      final code = Uri.parse(result).queryParameters['code'];

      if (code != null) {
        // Obtain GitHub OAuth credential securely
        final AuthCredential credential = GithubAuthProvider.credential(code);

        // Sign in with the obtained credential
        await _auth.signInWithCredential(credential);

        print("GitHub Sign-In successful!");
        return true;
      } else {
        print("Failed to obtain authorization code from GitHub");
        return false;
      }
    } catch (error) {
      // Handle errors for debugging and production
      print("GitHub Sign-In failed: $error");
      return false;
    }
  }
}

final authProvider = StateNotifierProvider<AuthProvider, UserBase>(
  (ref) {
    return AuthProvider();
  },
);

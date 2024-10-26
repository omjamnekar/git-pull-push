import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:git_up_push/model/User.dart';
import 'package:git_up_push/pages/home/home.dart';
import 'package:git_up_push/riverpod/auth.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    email.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final providerpath = ref.watch(authProvider.notifier);
    return Scaffold(
      body: Form(
        key: Key("signup"),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 2 + 150,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Sign Up"),
                  TextField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Gap(30),
                  TextField(
                    controller: password,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  Gap(30),
                  TextButton(
                    onPressed: () {
                      providerpath
                          .signup(email.text, password.text, context)
                          .then(
                        (value) {
                          if (value) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          }
                        },
                      );
                    },
                    child: Text("sumbit"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInPage(),
                          ));
                    },
                    child: Text(
                      "Sign In",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          providerpath.signInWithGitHub();
        },
        child: Text(
          'H',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

class SignInPage extends ConsumerStatefulWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    email.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final providerpath = ref.watch(authProvider.notifier);
    return Scaffold(
      body: Form(
        key: Key("signIn"),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 2 + 150,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Sign In"),
                  TextField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  Gap(30),
                  TextField(
                    controller: password,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  Gap(30),
                  TextButton(
                    onPressed: () {
                      providerpath
                          .signIn(email.text, password.text, context)
                          .then(
                        (value) {
                          if (value) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          }
                        },
                      );
                    },
                    child: Text("sumbit"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ));
                    },
                    child: Text(
                      "Sign OUT",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          providerpath.googleSignIn();
        },
        child: Text(
          'G',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

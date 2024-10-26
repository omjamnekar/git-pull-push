import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:git_up_push/cubit/splash_logic/splash_cubit.dart';
import 'package:git_up_push/cubit/splash_logic/splash_state.dart';
import 'package:git_up_push/firebase_options.dart';
import 'package:git_up_push/pages/auth/SIgnup.dart';
import 'package:git_up_push/pages/splash/splash.dart';
import 'package:git_up_push/riverpod/auth.dart';
import 'package:git_up_push/util/theme/theme.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'assets/.env');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appdisplay(),
      child: ProviderScope(
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          home: SplachPage(),
        ),
      ),
    );
  }
}

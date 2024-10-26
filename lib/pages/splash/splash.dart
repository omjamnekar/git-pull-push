import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_up_push/cubit/splash_logic/splash_cubit.dart';
import 'package:git_up_push/cubit/splash_logic/splash_state.dart';
import 'package:git_up_push/pages/auth/SIgnup.dart';
import 'package:git_up_push/pages/home/home.dart';
import 'package:git_up_push/pages/splash/display.dart';

class SplachPage extends StatefulWidget {
  const SplachPage({super.key});

  @override
  State<SplachPage> createState() => _SplachPageState();
}

class _SplachPageState extends State<SplachPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state is Authenticate) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            } else if (state is UnAuthenticate) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ));
            } else if (state is DisplaySplash) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DisplayPage(),
                  ));
            } else {}
          },
          child: const DisplayPage()),
    );
  }
}

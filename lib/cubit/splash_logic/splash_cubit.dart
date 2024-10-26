import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git_up_push/cubit/splash_logic/splash_state.dart';
import 'package:git_up_push/riverpod/auth.dart';
import 'package:git_up_push/riverpod/share/user_prefer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appdisplay() async {
    AuthProvider auth = AuthProvider();

    // checking authentication is done or not
    auth.checkAuth().then(
      (value) {
        if (value != null) {
          emit(Authenticate());
        } else {
          emit(UnAuthenticate());
        }
      },
    );
  }

  Future<void> changeState() async {}
}

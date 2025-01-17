import 'package:flutter/material.dart';
import 'package:lastfruitapp/features/auth/presentation/views/login_view.dart';
import 'package:lastfruitapp/features/auth/presentation/views/signup_view.dart';
import 'package:lastfruitapp/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:lastfruitapp/features/splash/presentation/views/splash_view.dart';
Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    default:
    // Handle undefined routes
      return MaterialPageRoute(builder: (context) => const Scaffold());

  }
}
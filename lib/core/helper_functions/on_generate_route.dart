import 'package:flutter/material.dart';
import 'package:lastfruitapp/features/splash/presentation/views/splash_view.dart';
Route<dynamic>onGenerateRoute(RouteSettings settings){
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    default:
    // Handle undefined routes
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
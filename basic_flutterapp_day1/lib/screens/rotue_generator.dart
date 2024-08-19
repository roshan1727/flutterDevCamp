import 'package:basic_flutterapp_day1/screens/SearchScreen.dart';
import 'package:basic_flutterapp_day1/screens/SignInScreen.dart';
import 'package:basic_flutterapp_day1/screens/SignUpScreen.dart';
import 'package:basic_flutterapp_day1/screens/dashboard.dart';
import 'package:basic_flutterapp_day1/screens/profile.dart';
import 'package:flutter/material.dart';

class RouteGenrator {
  static Route? generateRoute(RouteSettings routeSettings) {
    if (routeSettings.name == '/') {
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    } else if (routeSettings.name == '/dashboardScreen') {
      final Map? args = routeSettings.arguments as Map?;
      return MaterialPageRoute(
          builder: (_) => DashboardScreen(args!["username"]));
    } else if (routeSettings.name == '/search') {
      return MaterialPageRoute(builder: (_) => const SearchScreen());
    } else if (routeSettings.name == '/profile') {
      return MaterialPageRoute(builder: (_) => const ProfilePage());
    } else if (routeSettings.name == '/signUp') {
      return MaterialPageRoute(builder: (_) => const Signupscreen());
    }
  }
}

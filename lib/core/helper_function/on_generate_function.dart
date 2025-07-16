import 'package:flutter/material.dart';
import 'package:social_feed_app/Features/auth/presentation/screens/login_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    default:
      return MaterialPageRoute(builder: (context) => LoginScreen());
  }
}

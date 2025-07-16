import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:social_feed_app/Features/auth/presentation/screens/login_screen.dart';
import 'package:social_feed_app/core/helper_function/on_generate_function.dart';

class SocialFeedApp extends StatelessWidget {
  const SocialFeedApp({super.key});
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: LoginScreen.routeName,
      ),
    );
  }
}

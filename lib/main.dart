import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_feed_app/app.dart';
import 'package:social_feed_app/bloc_observer.dart';
import 'package:social_feed_app/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  /* await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); */
  await di.init();
  Bloc.observer = AppBlocObserver();
  runApp(const SocialFeedApp());
}

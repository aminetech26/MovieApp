import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:state_management/presentation/movie_app.dart';
import 'di/get_it.dart' as get_it;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]));
  unawaited(get_it.initDependencies());
  runApp(const MovieApp());
}

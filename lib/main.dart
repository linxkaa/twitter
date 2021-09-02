import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitter/app.dart';
import 'package:twitter/domain/core/env/env.dart';
import 'package:twitter/domain/core/helper/simple_bloc_observer.dart';
import 'package:twitter/domain/core/injection/injection.dart';
import 'package:twitter/infrastructure/data_sources/firebase_data_sources.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  configureInjection(TwitterEnv.main);

  WidgetsFlutterBinding.ensureInitialized();
  await getIt<FirebaseDataSource>().initialize();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then(
    (_) => runApp(
      TwitterApp(),
    ),
  );
}

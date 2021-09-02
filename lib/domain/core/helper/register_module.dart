import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:twitter/domain/core/env/env.dart';
import 'package:twitter/domain/core/env/main_env.dart';
import 'package:twitter/domain/core/router/router.gr.dart';

@module
abstract class RegisterModule {
  @Environment('main')
  @Named('env')
  Env get devEnv => MainEnv();

  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(),
      );

  @lazySingleton
  AppRouter get appRouter => AppRouter();
}

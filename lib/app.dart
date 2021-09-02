import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter/application/auth_bloc/auth_bloc.dart';
import 'package:twitter/domain/core/constant/twitter_theme.dart';
import 'package:twitter/domain/core/injection/injection.dart';
import 'package:twitter/domain/core/router/router.gr.dart';
import 'package:twitter/presentation/widgets/remove_focus_node.dart';
import 'package:twitter/presentation/widgets/twitter_scaffold.dart';

class TwitterApp extends StatelessWidget {
  const TwitterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = getIt<AppRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        )
      ],
      child: ScreenUtilInit(
        designSize: Size(680, 1780),
        builder: () => GestureDetector(
          onTap: () => removeFocusNode(context),
          child: MaterialApp.router(
            builder: (context, child) {
              return ScrollConfiguration(
                behavior: MyBehavior(),
                child: child ?? Container(),
              );
            },
            debugShowCheckedModeBanner: false,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            theme: TwitterTheme.theme,
          ),
        ),
      ),
    );
  }
}

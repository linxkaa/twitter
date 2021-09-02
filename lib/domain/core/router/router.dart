import 'package:auto_route/auto_route.dart';
import 'package:twitter/presentation/home_page/home_page.dart';
import 'package:twitter/presentation/login_page/login_page.dart';
import 'package:twitter/presentation/main_page/main_page.dart';
import 'package:twitter/presentation/register_page/landing_register_page.dart';
import 'package:twitter/presentation/register_page/register_page.dart';
import 'package:twitter/presentation/single_page/splash_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: MainPage),
    AutoRoute(page: LandingRegisterPage),
    AutoRoute(page: RegisterPage),
  ],
)
class $AppRouter {}

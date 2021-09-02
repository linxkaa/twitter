// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:twitter/presentation/home_page/home_page.dart' as _i5;
import 'package:twitter/presentation/login_page/login_page.dart' as _i4;
import 'package:twitter/presentation/main_page/main_page.dart' as _i6;
import 'package:twitter/presentation/register_page/landing_register_page.dart'
    as _i7;
import 'package:twitter/presentation/register_page/register_page.dart' as _i8;
import 'package:twitter/presentation/single_page/splash_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    LoginRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.LoginPage();
        }),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.HomePage();
        }),
    MainRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.MainPage();
        }),
    LandingRegisterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.LandingRegisterPage();
        }),
    RegisterRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.RegisterPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(MainRoute.name, path: '/main-page'),
        _i1.RouteConfig(LandingRegisterRoute.name,
            path: '/landing-register-page'),
        _i1.RouteConfig(RegisterRoute.name, path: '/register-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/login-page');

  static const String name = 'LoginRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class MainRoute extends _i1.PageRouteInfo {
  const MainRoute() : super(name, path: '/main-page');

  static const String name = 'MainRoute';
}

class LandingRegisterRoute extends _i1.PageRouteInfo {
  const LandingRegisterRoute() : super(name, path: '/landing-register-page');

  static const String name = 'LandingRegisterRoute';
}

class RegisterRoute extends _i1.PageRouteInfo {
  const RegisterRoute() : super(name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

import '../../../application/auth_bloc/auth_bloc.dart' as _i20;
import '../../../application/bottom_nav_bar_bloc/bottom_nav_bar_cubit.dart'
    as _i4;
import '../../../application/login_bloc/login_bloc.dart' as _i16;
import '../../../application/profile_bloc/profile_bloc.dart' as _i17;
import '../../../application/register_bloc/register_bloc.dart' as _i18;
import '../../../application/tweets_bloc/tweets_bloc.dart' as _i11;
import '../../../application/update_tweet/update_tweet_bloc.dart' as _i12;
import '../../../infrastructure/data_sources/auth_data_sources.dart' as _i14;
import '../../../infrastructure/data_sources/firebase_data_sources.dart'
    as _i10;
import '../../../infrastructure/data_sources/profile_data_sources.dart' as _i8;
import '../../../infrastructure/helper/api_helper.dart' as _i19;
import '../../../infrastructure/repositories/auth_repositories.dart' as _i13;
import '../../../infrastructure/repositories/profile_repositories.dart' as _i7;
import '../../../infrastructure/repositories/tweet_repositories.dart' as _i9;
import '../env/env.dart' as _i5;
import '../helper/register_module.dart' as _i21;
import '../router/router.gr.dart' as _i3;

const String _main = 'main';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppRouter>(() => registerModule.appRouter);
  gh.factory<_i4.BottomNavBarCubit>(() => _i4.BottomNavBarCubit());
  gh.factory<_i5.Env>(() => registerModule.devEnv,
      instanceName: 'env', registerFor: {_main});
  gh.lazySingleton<_i6.Logger>(() => registerModule.logger);
  gh.factory<_i7.ProfileRepositories>(
      () => _i7.ProfileRepositories(get<_i8.ProfileDataSources>()));
  gh.factory<_i9.TweeetRepositories>(
      () => _i9.TweeetRepositories(get<_i10.FirebaseDataSource>()));
  gh.factory<_i11.TweetsBloc>(
      () => _i11.TweetsBloc(get<_i9.TweeetRepositories>()));
  gh.factory<_i12.UpdateTweetBloc>(
      () => _i12.UpdateTweetBloc(get<_i9.TweeetRepositories>()));
  gh.factory<_i13.AuthRepositories>(() => _i13.AuthRepositories(
      get<_i10.FirebaseDataSource>(), get<_i14.AuthDataSources>()));
  gh.lazySingleton<_i15.Dio>(
      () => registerModule.dio(get<_i5.Env>(instanceName: 'env')));
  gh.factory<_i16.LoginBloc>(
      () => _i16.LoginBloc(get<_i13.AuthRepositories>()));
  gh.factory<_i17.ProfileBloc>(
      () => _i17.ProfileBloc(get<_i7.ProfileRepositories>()));
  gh.factory<_i18.RegisterBloc>(
      () => _i18.RegisterBloc(get<_i13.AuthRepositories>()));
  gh.lazySingleton<_i19.ApiHelper>(() => _i19.ApiHelper(get<_i15.Dio>()));
  gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(get<_i13.AuthRepositories>()));
  gh.singleton<_i10.FirebaseDataSource>(_i10.FirebaseDataSource());
  gh.singleton<_i8.ProfileDataSources>(
      _i8.ProfileDataSources(get<_i10.FirebaseDataSource>()));
  gh.singleton<_i14.AuthDataSources>(
      _i14.AuthDataSources(get<_i10.FirebaseDataSource>()));
  return get;
}

class _$RegisterModule extends _i21.RegisterModule {}

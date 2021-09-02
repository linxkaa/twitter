// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

import '../../../application/auth_bloc/auth_bloc.dart' as _i16;
import '../../../application/bottom_nav_bar_bloc/bottom_nav_bar_cubit.dart'
    as _i4;
import '../../../application/login_bloc/login_bloc.dart' as _i13;
import '../../../application/profile_bloc/profile_bloc.dart' as _i14;
import '../../../application/register_bloc/register_bloc.dart' as _i15;
import '../../../application/tweets_bloc/tweets_bloc.dart' as _i10;
import '../../../application/update_tweet/update_tweet_bloc.dart' as _i11;
import '../../../infrastructure/data_sources/firebase_data_sources.dart' as _i8;
import '../../../infrastructure/repositories/auth_repositories.dart' as _i12;
import '../../../infrastructure/repositories/profile_repositories.dart' as _i7;
import '../../../infrastructure/repositories/tweet_repositories.dart' as _i9;
import '../env/env.dart' as _i5;
import '../helper/register_module.dart' as _i17;
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
      () => _i7.ProfileRepositories(get<_i8.FirebaseDataSource>()));
  gh.factory<_i9.TweeetRepositories>(
      () => _i9.TweeetRepositories(get<_i8.FirebaseDataSource>()));
  gh.factory<_i10.TweetsBloc>(
      () => _i10.TweetsBloc(get<_i9.TweeetRepositories>()));
  gh.factory<_i11.UpdateTweetBloc>(
      () => _i11.UpdateTweetBloc(get<_i9.TweeetRepositories>()));
  gh.factory<_i12.AuthRepositories>(
      () => _i12.AuthRepositories(get<_i8.FirebaseDataSource>()));
  gh.factory<_i13.LoginBloc>(
      () => _i13.LoginBloc(get<_i12.AuthRepositories>()));
  gh.factory<_i14.ProfileBloc>(
      () => _i14.ProfileBloc(get<_i7.ProfileRepositories>()));
  gh.factory<_i15.RegisterBloc>(
      () => _i15.RegisterBloc(get<_i12.AuthRepositories>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i12.AuthRepositories>()));
  gh.singleton<_i8.FirebaseDataSource>(_i8.FirebaseDataSource());
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}

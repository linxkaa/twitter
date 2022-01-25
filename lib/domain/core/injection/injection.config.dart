// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i13;

import '../../../application/auth_bloc/auth_bloc.dart' as _i19;
import '../../../application/bottom_nav_bar_bloc/bottom_nav_bar_cubit.dart'
    as _i4;
import '../../../application/login_bloc/login_bloc.dart' as _i14;
import '../../../application/profile_bloc/profile_bloc.dart' as _i15;
import '../../../application/register_bloc/register_bloc.dart' as _i16;
import '../../../application/tweets_bloc/tweets_bloc.dart' as _i17;
import '../../../application/update_tweet/update_tweet_bloc.dart' as _i18;
import '../../../infrastructure/data_sources/firebase_data_sources.dart' as _i6;
import '../../../infrastructure/repositories/auth_repositories.dart' as _i8;
import '../../../infrastructure/repositories/profile_repositories.dart' as _i10;
import '../../../infrastructure/repositories/tweet_repositories.dart' as _i12;
import '../env/env.dart' as _i5;
import '../helper/register_module.dart' as _i20;
import '../interfaces/I_auth_repositories.dart' as _i7;
import '../interfaces/i_profile_repositories.dart' as _i9;
import '../interfaces/i_tweet_repositories.dart' as _i11;
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
  gh.singleton<_i6.FirebaseDataSource>(_i6.FirebaseDataSource());
  gh.lazySingleton<_i7.IAuthRepositories>(
      () => _i8.AuthRepositories(get<_i6.FirebaseDataSource>()));
  gh.lazySingleton<_i9.IProfileRepositories>(
      () => _i10.ProfileRepositories(get<_i6.FirebaseDataSource>()));
  gh.lazySingleton<_i11.ITweetRepositories>(
      () => _i12.TweeetRepositories(get<_i6.FirebaseDataSource>()));
  gh.lazySingleton<_i13.Logger>(() => registerModule.logger);
  gh.factory<_i14.LoginBloc>(
      () => _i14.LoginBloc(get<_i7.IAuthRepositories>()));
  gh.factory<_i15.ProfileBloc>(
      () => _i15.ProfileBloc(get<_i9.IProfileRepositories>()));
  gh.factory<_i16.RegisterBloc>(
      () => _i16.RegisterBloc(get<_i7.IAuthRepositories>()));
  gh.factory<_i17.TweetsBloc>(
      () => _i17.TweetsBloc(get<_i11.ITweetRepositories>()));
  gh.factory<_i18.UpdateTweetBloc>(
      () => _i18.UpdateTweetBloc(get<_i11.ITweetRepositories>()));
  gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(get<_i7.IAuthRepositories>()));
  return get;
}

class _$RegisterModule extends _i20.RegisterModule {}

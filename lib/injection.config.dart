// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i17;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import 'application/categories/category_actor/category_actor_bloc.dart' as _i18;
import 'application/categories/category_form/category_form_bloc.dart' as _i19;
import 'application/categories/category_watcher/category_watcher_bloc.dart'
    as _i20;
import 'application/navigation/nav_bloc.dart' as _i12;
import 'application/trips/trip_actor/trip_actor_bloc.dart' as _i14;
import 'application/trips/trip_form/trip_form_bloc.dart' as _i15;
import 'application/trips/trip_watcher/trip_watcher_bloc.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/categories/i_category_repository.dart' as _i8;
import 'domain/trips/i_trip_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/categories/category_repository.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i21;
import 'infrastructure/trips/trip_repository.dart' as _i11;

const String _prod = 'prod';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final firebaseTestInjectableModule = _$FirebaseTestInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth,
      registerFor: {_prod});
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseTestInjectableModule.firebaseAuth,
      registerFor: {_test});
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore,
      registerFor: {_prod});
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseTestInjectableModule.firestore,
      registerFor: {_test});
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn,
      registerFor: {_prod});
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseTestInjectableModule.googleSignIn,
      registerFor: {_test});
  gh.lazySingleton<_i6.IAuthFacade>(() =>
      _i7.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i8.ICategoryRepository>(
      () => _i9.CategoryRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.ITripRepository>(
      () => _i11.TripRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i12.NavBloc>(() => _i12.NavBloc());
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i14.TripActorBloc>(
      () => _i14.TripActorBloc(get<_i10.ITripRepository>()));
  gh.factory<_i15.TripFormBloc>(
      () => _i15.TripFormBloc(get<_i10.ITripRepository>()));
  gh.factory<_i16.TripWatcherBloc>(
      () => _i16.TripWatcherBloc(get<_i10.ITripRepository>()));
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i18.CategoryActorBloc>(
      () => _i18.CategoryActorBloc(get<_i8.ICategoryRepository>()));
  gh.factory<_i19.CategoryFormBloc>(
      () => _i19.CategoryFormBloc(get<_i8.ICategoryRepository>()));
  gh.factory<_i20.CategoryWatcherBloc>(
      () => _i20.CategoryWatcherBloc(get<_i8.ICategoryRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}

class _$FirebaseTestInjectableModule extends _i21.FirebaseTestInjectableModule {
}

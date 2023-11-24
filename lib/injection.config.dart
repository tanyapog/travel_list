// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:travel_list/application/auth/auth_bloc.dart' as _i18;
import 'package:travel_list/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i14;
import 'package:travel_list/application/categories/category_actor/category_actor_bloc.dart'
    as _i19;
import 'package:travel_list/application/categories/category_form/category_form_bloc.dart'
    as _i20;
import 'package:travel_list/application/categories/category_watcher/category_watcher_bloc.dart'
    as _i21;
import 'package:travel_list/application/navigation/nav_bloc.dart' as _i12;
import 'package:travel_list/application/trips/trip_actor/trip_actor_bloc.dart'
    as _i15;
import 'package:travel_list/application/trips/trip_form/trip_form_bloc.dart'
    as _i16;
import 'package:travel_list/application/trips/trip_watcher/trip_watcher_bloc.dart'
    as _i17;
import 'package:travel_list/domain/auth/i_auth_facade.dart' as _i6;
import 'package:travel_list/domain/categories/i_category_repository.dart'
    as _i8;
import 'package:travel_list/domain/trips/i_trip_repository.dart' as _i10;
import 'package:travel_list/infrastructure/auth/firebase_auth_facade.dart'
    as _i7;
import 'package:travel_list/infrastructure/categories/category_repository.dart'
    as _i9;
import 'package:travel_list/infrastructure/core/firebase_injectable_module.dart'
    as _i22;
import 'package:travel_list/infrastructure/trips/trip_repository.dart' as _i11;
import 'package:travel_list/presentation/routes/router.dart' as _i13;

const String _prod = 'prod';
const String _test = 'test';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    final firebaseTestInjectableModule = _$FirebaseTestInjectableModule();
    gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseTestInjectableModule.firebaseAuth,
      registerFor: {_test},
    );
    gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseTestInjectableModule.firestore,
      registerFor: {_test},
    );
    gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn,
      registerFor: {_prod},
    );
    gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseTestInjectableModule.googleSignIn,
      registerFor: {_test},
    );
    gh.lazySingleton<_i6.IAuthFacade>(() => _i7.FirebaseAuthFacade(
          gh<_i3.FirebaseAuth>(),
          gh<_i5.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i8.ICategoryRepository>(
        () => _i9.CategoryRepository(gh<_i4.FirebaseFirestore>()));
    gh.lazySingleton<_i10.ITripRepository>(
        () => _i11.TripRepository(gh<_i4.FirebaseFirestore>()));
    gh.factory<_i12.NavBloc>(() => _i12.NavBloc());
    gh.lazySingleton<_i13.Router>(() => _i13.Router());
    gh.factory<_i14.SignInFormBloc>(
        () => _i14.SignInFormBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i15.TripActorBloc>(
        () => _i15.TripActorBloc(gh<_i10.ITripRepository>()));
    gh.factory<_i16.TripFormBloc>(
        () => _i16.TripFormBloc(gh<_i10.ITripRepository>()));
    gh.factory<_i17.TripWatcherBloc>(
        () => _i17.TripWatcherBloc(gh<_i10.ITripRepository>()));
    gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(gh<_i6.IAuthFacade>()));
    gh.factory<_i19.CategoryActorBloc>(
        () => _i19.CategoryActorBloc(gh<_i8.ICategoryRepository>()));
    gh.factory<_i20.CategoryFormBloc>(
        () => _i20.CategoryFormBloc(gh<_i8.ICategoryRepository>()));
    gh.factory<_i21.CategoryWatcherBloc>(
        () => _i21.CategoryWatcherBloc(gh<_i8.ICategoryRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i22.FirebaseInjectableModule {}

class _$FirebaseTestInjectableModule
    extends _i22.FirebaseTestInjectableModule {}

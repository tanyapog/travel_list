import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_list/domain/auth/i_auth_facade.dart';
import 'package:travel_list/domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) => event.map(
        authCheckRequested: (event) async {
          final userOption = await _authFacade.getSignedInUser();
          emit(userOption.fold(
            () => const AuthState.unauthenticated(),
            (user) => AuthState.authenticated(user),
          ));
          return null;
        },
        signedOut: (event) async {
          await _authFacade.signOut();
          emit(const AuthState.unauthenticated());
          return null;
        },
      ),
      transformer: sequential(),
    );
  }
}

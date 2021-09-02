part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initial() = _Started;
  const factory AuthEvent.unauthenticated() = _AuthEventunauthenticated;
}

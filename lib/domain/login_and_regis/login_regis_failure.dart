import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_regis_failure.freezed.dart';

@freezed
class LoginRegisFailure with _$LoginRegisFailure {
  const factory LoginRegisFailure.empty() = _LoginRegisFailureEmpty;
  // Password
  const factory LoginRegisFailure.passwordInvalid() = _LoginRegisFailurepasswordInvalid;
  const factory LoginRegisFailure.passwordDidntMatch() = _LoginRegisFailurepasswordDidntMatch;
  const factory LoginRegisFailure.invalidEmailAddress() = _LoginRegisFailureinvalidEmailAddress;
}

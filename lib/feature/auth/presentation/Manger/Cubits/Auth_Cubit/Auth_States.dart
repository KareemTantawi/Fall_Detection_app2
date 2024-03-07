abstract class AuthStates{}

class SignInLoading extends AuthStates {}
class UserInitial extends AuthStates{}
class SignInSuccess extends AuthStates {}

class SignInFailure extends AuthStates {
  final String errMessage;

  SignInFailure({required this.errMessage});
}


class SignUpLoading extends AuthStates {}

class SignUpSuccess extends AuthStates {
  final int id;

  SignUpSuccess({required this.id});
}

class SignUpFailure extends AuthStates {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

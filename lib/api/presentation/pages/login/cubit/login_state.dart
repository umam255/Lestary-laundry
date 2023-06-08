// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_cubit.dart';

abstract class LoginStates extends Equatable {
  const LoginStates();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginStates {}

class LoginLoading extends LoginStates {}

class LoginIsSucces extends LoginStates {
  final LoginData data;

  LoginIsSucces({
    required this.data,
  });
}

class LoginIsError extends LoginStates {
  String? message;

  LoginIsError({
    this.message,
  });
}

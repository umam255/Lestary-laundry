part of 'register_bloc.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterIsLoading extends RegisterState {}

class RegisterIsFailed extends RegisterState {
  final String message;
  RegisterIsFailed({
    required this.message,
  });
}

class RegisterIsSuccess extends RegisterState {
  final UserModel data;
  RegisterIsSuccess({
    required this.data,
  });
}

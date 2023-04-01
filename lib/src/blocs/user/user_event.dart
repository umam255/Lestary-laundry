part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class LoadUserData extends UserEvent {}

class LogOutUser extends UserEvent {}

class ChangePhoto extends UserEvent {}

class ChangeEmail extends UserEvent {}

part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthInProgress extends AuthState {}

class AuthenticatedUser extends AuthState {}

class UnAuthenticatedUser extends AuthState {}

class AuthFailure extends AuthState {}

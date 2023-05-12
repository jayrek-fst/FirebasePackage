import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/use_cases/sign_in_use_case.dart';
import '../../../domain/use_cases/sign_out_use_case.dart';
import '../../../domain/use_cases/sign_up_use_case.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase signInUseCase;
  final SignUpUseCase signUpUseCase;
  final SignOutUseCase signOutUseCase;

  AuthBloc({
    required this.signInUseCase,
    required this.signUpUseCase,
    required this.signOutUseCase,
  }) : super(AuthInitial()) {
    on<SignedIn>((event, emit) async {
      emit(AuthInProgress());
      try {
        await signInUseCase.signInUser(event.email, event.password);
        emit(AuthenticatedUser());
      } catch (e) {
        emit(AuthFailure(message: e.toString()));
      }
    });
    on<SignedUp>((event, emit) async {
      emit(AuthInProgress());
      try {
        await signUpUseCase.signUpUser(event.email, event.password);
        emit(AuthenticatedUser());
      } catch (e) {
        emit(AuthFailure(message: e.toString()));
      }
    });
    on<SignedOut>((event, emit) async {
      emit(AuthInProgress());
      await signOutUseCase.signOutUser();
      emit(UnAuthenticatedUser());
    });
  }
}

import '../repositories/auth_repository.dart';

class SignInUseCase {
  final AuthRepository authRepository;

  SignInUseCase({required this.authRepository});

  Future<void> signInUser(String email, String password) async {
    await authRepository.signIn(email, password);
  }
}

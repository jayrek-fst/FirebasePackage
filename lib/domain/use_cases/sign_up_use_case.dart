import '../repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository authRepository;

  SignUpUseCase({required this.authRepository});

  Future<void> signUpUser(String email, String password) async {
    await authRepository.signUp(email, password);
  }
}

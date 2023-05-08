import '../repositories/auth_repository.dart';

class SignOutUseCase {
  final AuthRepository authRepository;

  SignOutUseCase({required this.authRepository});

  Future<void> signOutUser() async {
    await authRepository.signOut();
  }
}

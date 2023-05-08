import '../../domain/repositories/auth_repository.dart';
import '../data_sources/remote/auth/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl({required this.authRemoteDataSource});

  @override
  Future<void> signIn(String email, String password) async {
    try {
      await authRemoteDataSource.signIn(email, password);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signUp(String email, String password) async {
    try {
      await authRemoteDataSource.signUp(email, password);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    await authRemoteDataSource.signOut();
  }
}

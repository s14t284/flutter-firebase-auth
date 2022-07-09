import 'package:flutter_firebase_auth/domain/auth/auth_repository.dart';
import 'package:flutter_firebase_auth/domain/profile/profile.dart';

class AuthUsecase {
  AuthUsecase(this._authRepository);

  final AuthRepository _authRepository;

  Future<Profile?> signIn() async {
    final profile = await _authRepository.signin();
    return profile;
  }
}

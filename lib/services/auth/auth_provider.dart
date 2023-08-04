import 'package:rknotesapp/services/auth/auth_user.dart';

abstract class AuthProvider {
  Future<void> initialize();
  AuthUser? get currentUser;
  Future<AuthUser> logIn({
    required String email,
    required String password,
  });

  Future<AuthUser> creatUser({
    required String email,
    required String password,
  });
  Future<AuthUser> logOut();
  Future<AuthUser> sendEmailVerification();
}



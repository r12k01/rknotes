import 'package:rknotesapp/services/auth/auth_provider.dart';
import 'package:rknotesapp/services/auth/auth_user.dart';

class AuthService implements AuthProvider {
  final AuthProvider provider;
  const AuthService(this.provider);

  @override
  Future<AuthUser> creatUser({
    required String email,
    required String password,
  }) =>
      provider.creatUser(
        email: email,
        password: password,
      );

  @override
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<AuthUser> logIn({
    required String email,
    required String password,
  }) =>
      provider.logIn(
        email: email,
        password: password,
      );

  @override
  Future<AuthUser> logOut() => provider.logOut();

  @override
  Future<AuthUser> sendEmailVerification() => provider.sendEmailVerification();
}

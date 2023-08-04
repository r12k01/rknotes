// making register view
import 'package:flutter/material.dart';
import 'package:rknotesapp/constants/routes.dart';
import 'package:rknotesapp/services/auth/auth_exceptions.dart';
import 'package:rknotesapp/services/auth/auth_service.dart';
import '../utilities/show_error_dialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            enableSuggestions: true,
            autocorrect: true,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(hintText: 'E-Mail'),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            enableSuggestions: true,
            autocorrect: false,
            decoration: const InputDecoration(hintText: 'Password'),
          ),
          TextButton(
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;
              try {
                await AuthService.firebase().creatUser(
                  email: email,
                  password: password,
                );
                AuthService.firebase().sendEmailVerification();
                Navigator.of(context).pushNamed(verifyEmailRoute);
              } on WeakPasswordAuthException {
                await showErrorDialog(
                  context,
                  'weak password',
                );
              } on EmailAlreadyInUseAuthException {
                await showErrorDialog(
                  context,
                  'email-already-in-use',
                );
              } on InvalidEmailAuthException {
                await showErrorDialog(
                  context,
                  'invalid-email',
                );
              } on GenericAuthException {
                await showErrorDialog(
                  context,
                  'Error',
                );
              }
            },
            child: const Text('Register'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil(loginRoute, (route) => false);
            },
            child: const Text('Already registered. Login '),
          ),
        ],
      ),
    );
  }
}

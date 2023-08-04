import 'package:flutter/material.dart';
import 'package:rknotesapp/constants/routes.dart';
import 'package:rknotesapp/services/auth/auth_service.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Email'),
      ),
      body: Column(
        children: [
          const Text("we've sent the verification email"),
          const Text(
              "if you haven'nt got verification email, press the below link"),
          TextButton(
            onPressed: () async {
              await AuthService.firebase().sendEmailVerification();
            },
            child: const Text('Send email verification'),
          ),
          TextButton(
              onPressed: () async {
                await AuthService.firebase().logOut();
                Navigator.of(context).pushNamedAndRemoveUntil(
                  (registerRoute),
                  (route) => false,
                );
              },
              child: const Text('Restart'))
        ],
      ),
    );
  }
}

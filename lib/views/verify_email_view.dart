import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerfifyEmailView extends StatefulWidget {
  const VerfifyEmailView({super.key});

  @override
  State<VerfifyEmailView> createState() => _VerfifyEmailViewState();
}

class _VerfifyEmailViewState extends State<VerfifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verfity Email'),
      ),
      body: Column(
        children: [
          const Text('Please verify your email.'),
          TextButton(
            onPressed: () {
              final user = FirebaseAuth.instance.currentUser;
              user?.sendEmailVerification();
            },
            child: const Text('Send email verification'),
          )
        ],
      ),
    );
  }
}

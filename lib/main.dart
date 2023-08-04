import 'package:flutter/material.dart';
import 'package:rknotesapp/services/auth/auth_service.dart';
import 'package:rknotesapp/constants/routes.dart';
import 'package:rknotesapp/views/login_view.dart';
import 'package:rknotesapp/views/notes_view.dart';
import 'package:rknotesapp/views/register_view.dart';
import 'package:rknotesapp/views/verify_email_view.dart';
// import 'dart:developer' as devtools show log;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        // useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        loginRoute: (context) => const LoginView(),
        registerRoute: (context) => const RegisterView(),
        notesRoute: (context) => const NotesView(),
        verifyEmailRoute: (context) => const VerifyEmailView(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.firebase().initialize(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = AuthService.firebase().currentUser;
            if (user != null) {
              if (user.isEmailVerified) {
                // devtools.log('Email verified');
                return const NotesView();
                // } else if (!user.emailVerified) {
                //   return const LoginView();
                // }
              } else {
                return const VerifyEmailView(); // Corrected the typo here
              }
            } else {
              return const LoginView();
            }
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}

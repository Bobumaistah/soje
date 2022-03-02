import 'package:flutter/material.dart';
import 'package:so_je/ui/pages/get_started_page.dart';
import 'package:so_je/ui/pages/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const GetStartedPage(),
        '/sign-in': (context) => const SignInPage(),
      },
    );
  }
}

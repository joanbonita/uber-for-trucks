import 'package:ubertruck/home_screen.dart';
import 'package:ubertruck/login_screen.dart';
import 'package:ubertruck/signup_screen.dart';
import 'package:ubertruck/wrapper_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber for Trucks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      initialRoute: '/',
      routes: {
        '/': (_) => const WrapperScreen(),
        '/home': (_) => const HomeScreen(),
        '/login': (_) => const LoginScreen(),
        '/signup': (_) => const SignUpScreen(),
      },
    );
  }
}
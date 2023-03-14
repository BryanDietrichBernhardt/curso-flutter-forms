import 'package:flutter/material.dart';
import 'package:textfield_app/screens/login_page.dart';
import 'package:textfield_app/screens/register_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
      },
    );
  }
}

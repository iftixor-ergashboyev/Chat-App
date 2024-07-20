import 'package:chat_app/auth/login_or_register.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}
class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const LoginOrRegister(),

    );
  }
}

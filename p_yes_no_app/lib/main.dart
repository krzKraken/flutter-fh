import 'package:flutter/material.dart';
import 'package:p_yes_no_app/config/themes/app_theme.dart';
import 'package:p_yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 0).theme(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const ChatScreen(),
    );
  }
}

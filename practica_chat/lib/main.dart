import 'package:flutter/material.dart';
import 'package:practica_chat/config/theme/theme.dart';
import 'package:practica_chat/presentation/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(optionTheme: OptionTheme.dark).theme(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const ChatScreen(),
    );
  }
}

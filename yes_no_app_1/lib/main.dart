import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app_1/config/theme/app_theme.dart';
import 'package:yes_no_app_1/presentation/providers/chat_provider.dart';
import 'package:yes_no_app_1/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatProvider>(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //theme:
        theme: Apptheme(selectedColor: 0).theme(),
        title: 'Yes No app',
        home: const ChatScreen(),
      ),
    );
  }
}


//* para poder usarlo en toda la app tenemos que colocarlo envolviendo el MaterialApp con un widget "Multi provider"
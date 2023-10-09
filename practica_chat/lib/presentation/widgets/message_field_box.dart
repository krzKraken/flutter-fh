import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  final inputDecoration = const InputDecoration(
    hintText: 'Write your tex here..!!',
    hoverColor: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: inputDecoration,
    );
  }
}

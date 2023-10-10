import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.red,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI9yf6dETREXc-EyCvN_JDI87sAMaUYxRvHmhdTpkhdw&s'),
          ),
        ),
        title: const Text('Contacto '),
        centerTitle: false,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text('Indice: $index');
                },
                itemCount: 100,
              ),
            ),
            const Text('data'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app_1/domain/entities/message.dart';
import 'package:yes_no_app_1/presentation/providers/chat_provider.dart';
import 'package:yes_no_app_1/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app_1/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app_1/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(2.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.latercera.com/resizer/saeHIV0wHpjks2kRutusF-uOYko=/768x0/smart/filters:quality(70):format(webp):no_upscale()/cloudfront-us-east-1.images.arcpublishing.com/copesa/XFUHZBF3WBD5DGARM2HE4BESSY.webp',
                scale: 10.5),
          ),
        ),
        title: const Text('Alguien...'),
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
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.messagesList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messagesList[index];
                return (message.fromWho == FromWho.hers)
                    ? const HerMessageBuble()
                    : MyMessageBuble(
                        message: message,
                      );
              },
            )),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}

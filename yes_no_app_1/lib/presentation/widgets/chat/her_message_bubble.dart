// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yes_no_app_1/domain/entities/message.dart';

class HerMessageBuble extends StatelessWidget {
  final Message message;
  const HerMessageBuble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: color.secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                message.text,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        _ImageBubble(message.imageUrl!),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageUrl;
  const _ImageBubble(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(imageUrl,
          width: size.width * 0.5,
          height: 150,
          fit: BoxFit.cover, loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Container(
          width: size.width * 0.5,
          height: 150,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child:
              const Center(child: Text("Mi amor esta enviando una imagen...")),
        );
      }),
    );
  }
}

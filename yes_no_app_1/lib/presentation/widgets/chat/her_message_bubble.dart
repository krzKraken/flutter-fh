import 'package:flutter/material.dart';

class HerMessageBuble extends StatelessWidget {
  const HerMessageBuble({super.key});

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
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                'hola desde her message',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const _ImageBubble()
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
          "https://yesno.wtf/assets/no/7-331da2464250a1459cd7d41715e1f67d.gif",
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

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    //? trae los colores del tema global
    final colors = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: size.width * 0.7,
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Text(
              'soy yo Officia minim veniam duis consectetur id ullamco ullamco anim quis aute minim. Enim culpa enim ullamco fugiat fugiat reprehenderit nisi. Officia eu sunt et commodo nulla Lorem Lorem et. Eiusmod pariatur velit aliquip enim sit laboris id occaecat amet voluptate pariatue.',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: size.width * 0.7,
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              'Soy ella!... Ut eu sint cupidatat dolor. Dolor eu eiusmod nulla cillum. Eu dolor cupidatat ea excepteur aute aliqua proident aliquip est amet reprehenderit occaecat qui. Ipsum officia culpa velit sunt adipisicing laboris labore veniam exercitation id. Quis sint ipsum reprehenderit esse nulla qui sunt reprehenderit ex cupidatat dolore. Nisi alisadqua sint exercitation!!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        _ImageBubble(),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://yesno.wtf/assets/yes/3-422e51268d64d78241720a7de52fe121.gif',
          fit: BoxFit.cover,
          width: size.width * 0.70,
          height: 200,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress != null) {
              return Container(
                width: size.width * 0.70,
                height: 200,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: const Text('Mi amor esta enviando una imagen...'),
              );
            }
            return child;
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.settings),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              clickCounter.toString(),
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            (clickCounter == 1)
                ? const Text('Click!!',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
                : const Text('Clicks!!',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text(
              'Click${clickCounter == 1 ? '' : 'S'}',
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              clickCounter += 1;
            });
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}

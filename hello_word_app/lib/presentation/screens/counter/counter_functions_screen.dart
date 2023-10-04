import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.red,
        title: const Text('Counter Functions Screen'),
        leading: IconButton(
          color: Colors.white,
          onPressed: () {},
          icon: const Icon(Icons.refresh),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                },
                icon: const Icon(Icons.refresh)),
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
              icono: Icons.exposure_plus_1,
              funcion: () {
                setState(() {
                  clickCounter++;
                });
              }),
          const SizedBox(height: 10),
          CustomButton(
            icono: Icons.exposure_zero,
            funcion: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
              icono: Icons.exposure_minus_1,
              funcion: () {
                setState(() {
                  if (clickCounter <= 0) return;
                  clickCounter--;
                });
              }),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icono;
  final VoidCallback? funcion;

  const CustomButton({
    super.key,
    required this.icono,
    this.funcion,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 100,
      shape: const StadiumBorder(),
      enableFeedback: true,
      onPressed: funcion,
      child: Icon(icono),
    );
  }
}

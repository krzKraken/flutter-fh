import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    //? Colores que se
    final colors = Theme.of(context).colorScheme;

    //? Text controller
    final textController = TextEditingController();

    //? Para mantener el Focus del TextFieldBox despues del done
    final focusNode = FocusNode();

    final outLineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(color: Colors.transparent),
    );

    final inputDecoration = InputDecoration(
      hintText: 'Make a question',
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          final String textValue = textController.value.text;
          print('Valor de la caja de texto IconButton: ??? $textValue');
          textController.clear();
        },
        icon: const Icon(Icons.send),
      ),
      enabledBorder: outLineInputBorder,
      focusedBorder: outLineInputBorder,
    );

    return TextFormField(
      //? Focus
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Valor de la caja de texto con Enter: $value');
        textController.clear();
        //? Despues del done mantiene mantiene el focus en el text box
        focusNode.requestFocus();
      },
      // onChanged: (value) {
      //   print('Valor de la caja de texto en cambio: $value');
      // },
    );
  }
}

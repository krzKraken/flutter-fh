import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      hintText: 'end your message with a ??',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          final textValue = textController.value.text;
          print("Button: $textValue");
          textController.clear();
        },
        icon: const Icon(Icons.send),
      ),
    );

    return TextFormField(
      keyboardType: TextInputType.text,
      //? Mantener el focus
      focusNode: focusNode,
      //? quitar el focus
      onTapOutside: (event) => focusNode.unfocus(),
      //? Text controler para limpiar el texto en el textFieldForm
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Submit value: $value');
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) => print("Value: $value"),
    );
  }
}

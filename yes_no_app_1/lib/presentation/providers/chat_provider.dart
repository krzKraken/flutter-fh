//* Provider como gestor de estado -> No requiere muchos paquetes o librerias externas

import 'package:flutter/material.dart';
import 'package:yes_no_app_1/config/helpers/get_yes_no_answer.dart';

//Importamos nuestra entrada "entities"
import 'package:yes_no_app_1/domain/entities/message.dart';

//? Implementacion de provider
class ChatProvider extends ChangeNotifier {
  //? El controler para mover el Scroll despues de escribir una linea en el text field
  final ScrollController chatScrollController = ScrollController();

  //Instancia de GetYEsNoAsnswer
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

//? El Notifier es para informar sobre algun cambio y redibujar algun widget

  List<Message> messagesList = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Ya regresaste a casa?', fromWho: FromWho.me),
  ];

  // Metodo de emision de mensaje -> EVENTO
  Future<void> sendMessage(String text) async {
    //? Esperar que temrine la animacion
    if (text.isEmpty) return;
    final newMessage = Message(fromWho: FromWho.me, text: text);
    messagesList.add(newMessage);

    if (text.endsWith('?')) {
      herReplay();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> herReplay() async {
    final herMessage = await getYesNoAnswer.getAnswer();
  }

//? Funcion mueve scroll hacia abajo al maximo
  void moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}


//* para poder usarlo en toda la app tenemos que colocarlo envolviendo el MaterialApp con un widget "Multi provider"

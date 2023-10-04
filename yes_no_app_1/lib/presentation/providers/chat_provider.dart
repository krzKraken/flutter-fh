//* Provider como gestor de estado -> No requiere muchos paquetes o librerias externas

import 'package:flutter/material.dart';

//Importamos nuestra entrada "entities"
import 'package:yes_no_app_1/domain/entities/message.dart';

//? Implementacion de provider
class ChatProvider extends ChangeNotifier {
//? El Notifier es para informar sobre algun cambio y redibujar algun widget

  List<Message> messagesList = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Ya regresaste a casa?', fromWho: FromWho.me),
  ];

  // Metodo de emision de mensaje -> EVENTO
  Future<void> sendMessage8() async {
    //TODO: Enviar mensaje
  }
}


//* para poder usarlo en toda la app tenemos que colocarlo envolviendo el MaterialApp con un widget "Multi provider"

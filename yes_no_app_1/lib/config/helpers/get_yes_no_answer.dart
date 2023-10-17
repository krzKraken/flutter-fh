//? Respuesta de peticion http

import 'package:dio/dio.dart';
import 'package:yes_no_app_1/domain/entities/message.dart';
import 'package:yes_no_app_1/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  final Dio _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    // print('Respuesta http: ${response.data}');
    // print(response.data['answer']);
    // print(response.data['image']);

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    // return Message(
    //     text: yesNoModel.answer,
    //     imageUrl: yesNoModel.image,
    //     fromWho: FromWho.hers);

    return yesNoModel.toMessageEntity();
  }
}

//? Respuesta de peticion http

import 'package:dio/dio.dart';
import 'package:yes_no_app_1/domain/entities/message.dart';

class GetYesNoAnswer {
  final Dio _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    print(response.data);

    throw UnimplementedError();
  }
}

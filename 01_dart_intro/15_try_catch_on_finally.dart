void main() async {
  print("Inicio del programa");

  try {
    //? Intenta resolver el Future y si falla captura el error
    final resp = await httpGet('https://google.com');
    print('Exito: $resp');
  } on Exception catch (err) {
    print('Tenemos un Exception: $err');
  } catch (err) {
    print('OPSS! algo terrible paso: $err');
  } finally {
    print('Fin del Try y catch');
  }

  print("Fin del programa");
}

//? Una forma mas limpia de un Future
Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));

  // throw 'Error no controlado';
  throw new Exception('No hay parametros en el URL:');
  // return 'Respuesta de la peticion';
}

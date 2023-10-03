void main() {
//? futures
  print("Inicio del programa");

  //? ejecutando la funcion que devuelve un future....
  httpGet('https://hola.com').then((value) {
    print(value);
  });

  httpGet2().then((value) {
    print(value);
  }).catchError((error) {
    print('Error: $error');
  });
  print("Fin del programa");
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    return 'respuesta de la peticion';
  });
}

Future<String> httpGet2() {
  return Future.delayed(Duration(seconds: 2), () {
    //? Forzando un throw para probar el catchError
    throw 'Error no controlado';

    //? Respuesta normal
    // return 'respuesta de la peticion';
  });
}

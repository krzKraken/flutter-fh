void main() {
//? futures
  print("Inicio del programa");
  httpGet('https://hola.com').then((value) {
    print(value);
  });
  print("Fin del programa");
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    return 'respuesta de la peticion';
  });
}

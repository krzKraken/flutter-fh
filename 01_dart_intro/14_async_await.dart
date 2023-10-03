void main() async {
  print("Inicio del programa");
  //Normal
  /* 
  httpGet('https://google.com')
      .then((resp) => print(resp))
      .catchError((err) => print(err));
  */

  //Forma try catch
  try {
    //? Intenta resolver el Future y si falla captura el error
    final resp = await httpGet('https://google.com');
    print(resp);
  } catch (err) {
    print('Tuvimos un error: $err');
  }

  print("Fin del programa");
}

//? Future sin async await
/*
Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    throw 'Error no controlado';
    // return 'URL: $url -> Respuesta';
  });
}
*/

//? Una forma mas limpia de un Future
Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  return 'Respuesta de la peticion';
}

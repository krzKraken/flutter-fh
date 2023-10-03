void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png',
    }
  };
  print(pokemon);

  //? Notacion llave cuadrada
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['sprites']}');
  print('Back: ${pokemon['sprites'][1]}');
  print('Front: ${pokemon['sprites'][2]}');
}

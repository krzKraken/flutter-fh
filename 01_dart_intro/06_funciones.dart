void main() {
  print(greetEveryone());
  print('Suma 2 numeros: ${addTwoNumbers(10, 20)}');
  print('Suma 3 numeros: ${addthreeNumbers(10, 20, 1)}');
  print(greetPerson(name: 'kraken', message: 'Otro mensaje'));
}

//? Funcion tradicional
String greetEveryone() {
  return 'Hello everyone!';
}

//? funcion de flecha
int addTwoNumbers(int a, int b) => (a + b);

//? Funcion con parametros opcionales
int addthreeNumbers(int a, int? b, [int c = 0]) {
  b ??= 0;
  //? c = 0 por defecto
  return (a + b + c);
}

//? Funciones con parametros con nombres @requided - Opcional
String greetPerson({required String name, String message = 'hola,'}) {
  return '${message} ${name}';
}

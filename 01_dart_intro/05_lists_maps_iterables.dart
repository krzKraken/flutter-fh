void main() {
  //? Lista [...]
  final number = [1, 2, 3, 4, 5, 6, 6, 6, 7, 7, 7, 8, 9, 10];
  print("...LISTAS... [ , , , ]");
  print('List original: $number');
  print('List length: ${number.length}');
  print('List index 0: ${number[0]}');
  print('List first: ${number.first}');
  print('List reverse: ${number.reversed}');

  //? Iterable (...)
  print('... ITERABLE ...( , , , )');
  final reversedNumber = number.reversed;
  print('Iterable: $reversedNumber');
  print('Iterable to list: ${reversedNumber.toList()}');

  //? SET {...} -> No se repten los numeros
  print('... SETS ...{ , , , }');
  print('Set: ${reversedNumber.toSet()}');

  //? WHERE
  final numberosMayoresQue5 = number.where((int num) => num > 5);
  final numberosMenoresQue5 = number.where((num) {
    return num < 5;
  });
  print('Mayor que 5: ${numberosMayoresQue5}');
  print('Menor que 5: ${numberosMenoresQue5}');
}

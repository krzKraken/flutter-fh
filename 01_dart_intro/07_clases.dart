void main() {
  final wolverine = Hero(name: 'Logan', power: 'Opcional');
  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  //? 1 forma de inicializar
  Hero({
    required this.name,
    this.power = '',
  });

  //* otra Forma de inicializar
  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  //? @override -> sobre escribe un metodo o el comportamiento nativo de un metodo
  @override
  String toString() {
    return '$name - $power';
  }
}

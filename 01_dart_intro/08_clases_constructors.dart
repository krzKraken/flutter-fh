void main() {
  //? Creando un objeto de la clase
  final ironman = Hero(
    name: 'Ironman',
    isAlive: true,
    power: 'Money',
  );
  print(ironman.toString());

  //? Si recibimos desde una peticion http este objeto rawJson
  final Map<String, dynamic> rawJson = {
    'name': 'Logan',
    'power': 'Regeneracion',
    'isAlive': true,
  };

  //* Creando un objeto usando un metodo constructor Hero.fromJson
  final logan = Hero.fromJson(rawJson);
  print(logan.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;
  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  //* Se puede sobre escribir el metodo toString para que devuelva la informacion de la clase y no 'Instancia de hero'
  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES' : 'NO'}';
  }
}

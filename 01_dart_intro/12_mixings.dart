void main() {
  final flipper = Delfin();
  flipper.nadar();
  print(flipper.toString());

  final batman = Murcielago();
  batman.volar();
  batman.caminar();
}

//? Clase que tiene todas las propiedades
abstract class Animal {}

//? Clase que solo tiene propiedades de cada clase especifica
abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

//? Mixins
mixin Volador {
  void volar() {
    print('Estoy volando');
  }
}

mixin Caminante {
  void caminar() {
    print('Estoy caminando');
  }
}

mixin Nadador {
  void nadar() {
    print('Estoy nadando');
  }
}

class Delfin extends Mamifero with Nadador {
  @override
  String toString() {
    return 'Esto es un nadador';
  }
}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Volador, Nadador {}

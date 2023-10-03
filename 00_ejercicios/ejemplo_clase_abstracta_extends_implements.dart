void main() {
  print("----------Clases Extends--------");
  final myPet1 = Dog(edad: 1, name: "Max", food: "meat", type: TypeAnimal.dog);
  print(myPet1);
  myPet1.makeSound();
  myPet1.whatsEating('carne');

  final myPet2 = Cat(edad: 2, name: 'Michi', type: TypeAnimal.cat, vidas: 7);
  print(myPet2.name);
  print(myPet2.type);
  print(myPet2.vidas);
  myPet2
    ..makeSound()
    ..whatsEating('Fish');

  final myPet3 = Bird(nombre: 'Palomo');
  print('My bird"s name is ${myPet3.name}');
  myPet3.makeSound();
  myPet3.whatsEating('Cealings....');
  print("-------Clases Implements--------");

  final myPet4 = Insect(name: "pepin", edad: 1, type: TypeAnimal.scorpion);
  print(myPet4.name);
}

enum TypeAnimal { cat, dog, bird, scorpion }

//* Clase abstracta, no se puede inicializar solo sirve para crear nuevas clases

abstract class Animal {
  String name;
  int edad;
  final TypeAnimal type;

  Animal({
    required this.name,
    required this.edad,
    required this.type,
  });

  void makeSound() {
    throw UnimplementedError();
  }

  void whatsEating(String food) {
    print('$name is eating $food');
  }
}

//* Clase perro que extiende de la clase Abstracta, se puede inicializar y toma todas las propiedades y metodos de la clase abstracta o padre
class Dog extends Animal {
  String food;

  Dog(
      {required String name,
      required int edad,
      required this.food,
      required TypeAnimal type})
      : super(name: name, edad: edad, type: type);
  @override
  void makeSound() {
    print('woof!!!!');
  }

  @override
  void whatsEating(String food) {
    print('$name is eating $food');
  }

  @override
  String toString() {
    return 'Nombre: $name - Edad: $edad - Tipo: $type - Comida: $food';
  }
}

class Cat extends Animal {
  int vidas;
  Cat(
      {required this.vidas,
      required String name,
      required int edad,
      required TypeAnimal type})
      : super(edad: edad, name: name, type: type);
  @override
  void makeSound() {
    print("Miau");
  }

  @override
  void whatsEating(String food) {
    print('$name is eating $food');
  }
}

class Bird extends Animal {
  Bird({required String nombre})
      : super(edad: 1, name: nombre, type: TypeAnimal.bird);
  @override
  void makeSound() {
    print('Pio!! pio!!');
  }

  @override
  void whatsEating(String food) {
    print('$name likes eat $food');
  }
}

//* Clase ____ que implementa la clase abstracta o padre Animal.

class Insect implements Animal {
  String name;
  int edad;
  final TypeAnimal type;

  Insect({required this.name, required this.edad, required this.type});

  @override
  void makeSound() {
    print('SHHH');
  }

  @override
  void whatsEating(String food) {
    print('$name likes to eat $food');
  }
}

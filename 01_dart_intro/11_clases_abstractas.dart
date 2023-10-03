void main() {
  //! No se puede inicializar
  //!final windPlant = EnergyPlant();

  final windPlant = WindPlant(initialEnergy: 90.0);

  print(windPlant);

  print('Wind: ${chargePhone(windPlant)}');
}

//ejemplo
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('Not enought energy');
  return plant.energyLeft - 10;
}

//? Clases abstractas, es como un molde que permiten crear otros moldes...
//! No sirve para nada mas que crear otras clases no se pueden inicializar.

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount) {
    //? se puede implementar mensaje de error
    throw UnimplementedError();
  }
}

//? Extiende o hereda de una clase abstracta
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

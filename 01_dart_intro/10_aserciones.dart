void main() {
  final miCuadrado = Cuadrado(lado: 10.0);
  print("Cuadrado: $miCuadrado");
  print('Area: ${miCuadrado.area}');
  miCuadrado.lado = 5;
  print('Area: ${miCuadrado.area}');
}

class Cuadrado {
  double _lado;

  //Constructor
  Cuadrado({required lado})
      //! Assert valida en el consturctor
      : assert(lado >= 0, 'Side must be >=0'),
        _lado = lado;

  //Calcula area
  double calcularArea() {
    return _lado * _lado;
  }

  double get area {
    return _lado * _lado;
  }

  set lado(double nuevoLado) {
    if (nuevoLado < 0) throw 'Lado no puede ser negativo';

    _lado = nuevoLado;
  }

  @override
  String toString() {
    return 'Lado: $_lado';
  }
}

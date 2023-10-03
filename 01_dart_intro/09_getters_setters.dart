void main() {
  final mySquare = Square(side: 5.0);
  print('Area mySquare: ${mySquare.CalculateArea()}');
  mySquare.side = 5.5;
  print('Area mySquare: ${mySquare.CalculateArea()}');
}

class Square {
  //?Propiedad privada y solo se puede modificar con el metodo set
  double _side;

  // ?Propiedad publica
  //* double side;

  Square({required side}) : _side = side;

  double CalculateArea() {
    return _side * _side;
  }

  //* Getter
  double get area {
    return _side * _side;
  }

  //*Setter
  set side(double newSide) {
    if (newSide < 0) throw 'Side must be >=0';

    _side = newSide;
  }
}

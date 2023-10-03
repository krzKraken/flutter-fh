void main() {
  final miPersona = persona("Cristhian", "Miranda", 20);
  print(miPersona);
}

class persona {
  String nombre;
  String apellido;
  int edad;

  persona(this.nombre, this.apellido, this.edad);

  @override
  String toString() {
    return 'Nombre: $nombre, Apellido: $apellido, edad: $edad';
  }
}

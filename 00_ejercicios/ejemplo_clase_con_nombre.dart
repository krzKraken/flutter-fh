void main() {
  final persona1 = persona(
    name: "Nombre1",
    apellido: "Apellido1",
  );
  print(persona1);
}

class persona {
  String name;
  String apellido;
  int? edad;

  persona({required this.name, required this.apellido, this.edad});

  @override
  String toString() {
    return 'Nombre: $name - Apellido: $apellido - Edad: $edad';
  }
}

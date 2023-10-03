void main() {
  final String pokemon = "Tito";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["impostor"];
  final sprite = <String>["ditto/front.png", "ditto/back.png"];

  //? Dynamic -> nulo, por defecto
  dynamic errorMessage = "error";
  errorMessage = 1;
  errorMessage = "error";
  errorMessage = [1, 2, 3];
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprite
  $errorMessage
""");
}

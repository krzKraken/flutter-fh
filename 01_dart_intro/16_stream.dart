//? Streams
void main() {
  emitNumbers().listen((event) {
    print('Desde listen: $event');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(Duration(seconds: 1), (value) {
    return value;
  }).take(10);
}

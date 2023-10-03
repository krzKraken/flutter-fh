//? Async * -> devuelve un stream

void main() {
  emitNumber().listen((val) => print('val: $val'));
}

//! Si usamos un async* no devolvemos un return, sino un  yield...
Stream<int> emitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4];
  for (int i in valuesToEmit) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

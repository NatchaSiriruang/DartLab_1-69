Stream<dynamic> countdown(int from) async* {
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
  yield "หมดเวลา!";
}

void main() async {
  await for (var number in countdown(5)) {
    print(number);
  }
}

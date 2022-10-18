class Countdown {
  static Stream<String> start() async* {
    var i = 10;
    while (i > 0) {
      await Future.delayed(const Duration(seconds: 1), () {
        i--;
      });
      yield i.toString();
    }

    yield "bLAsT oFf !!!";
  }
}

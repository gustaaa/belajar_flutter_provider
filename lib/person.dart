import 'package:flutter/cupertino.dart';

class Person with ChangeNotifier {
  //attribute
  String name;
  int age;
  //constructor
  Person({
    required this.name,
    required this.age,
  });

  void increaseAge() {
    age++;
    notifyListeners();
  }
}

class Home {
  final String city = "Portland";

  // The value that will be provided must be a `Future`.
  Future<String> get fetchAddress {
    // NB: using `Future.delayed` is mocking an HTTP request.
    // imagine that this is something like http.get("http://my_api.com/address");
    final address = Future.delayed(const Duration(seconds: 5), () {
      return '1234 North Commercial Ave.';
    });

    return address;
  }
}

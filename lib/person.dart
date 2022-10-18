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

  Stream<String> get umur async* {
    var i = age;
    while (i < 85) {
      await Future.delayed(const Duration(seconds: 1), () {
        i++;
      });
      yield i.toString();
    }
  }
}

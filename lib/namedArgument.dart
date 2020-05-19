//example for better understanding

class Person {
  String name;
  int age;
  Person({this.name, this.age});
}

void main() {
  var p1 = Person(age: 33, name: 'Mamu');
  var p2 = Person(name: 'alang', age: 10);
  print(p1.age);
  print(p2.name);
}

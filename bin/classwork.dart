import 'dart:ffi';

void main(List<String> args) {
  Country kg = Country(name: 'Kyrgyzstan', climate: 'moderate latitude');
  Car bmw = Car(capacity: 220, color: 'Black', name: 'BMW', price: 13000);

  kg.getInfo();
  bmw.getInfo();
}

class Country {
  String name;
  String climate;

  Country({required this.name, required this.climate});

  void getInfo() {
    print("place: $name, climate: $climate");
  }
}

class Car {
  double capacity;
  String color;
  String name;
  int price;

  Car(
      {required this.capacity,
      required this.color,
      required this.name,
      required this.price});

  void getInfo() {
    print('Car: $name, color: $color, capacity: $capacity, price: $price\$');
  }
}

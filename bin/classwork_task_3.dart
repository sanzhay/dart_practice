import 'dart:io';

void main(List<String> args) {
  String? phone1_number = stdin.readLineSync();
  String? phone1_model = stdin.readLineSync();
  String? phone1_weight = stdin.readLineSync();
  Phone phone1 = Phone(
      number: phone1_number!,
      model: phone1_model!,
      weight: double.parse(phone1_weight!));

  String? phone2_number = stdin.readLineSync();
  String? phone2_model = stdin.readLineSync();
  String? phone2_weight = stdin.readLineSync();
  Phone phone2 = Phone(
      number: phone2_number!,
      model: phone2_model!,
      weight: double.parse(phone2_weight!));

  String? phone3_number = stdin.readLineSync();
  String? phone3_model = stdin.readLineSync();
  String? phone3_weight = stdin.readLineSync();
  Phone phone3 = Phone(
      number: phone3_number!,
      model: phone3_model!,
      weight: double.parse(phone3_weight!));

  phone1.receiveCall("John");
  print(phone1.getNumber());

  phone2.receiveCall("Kate");
  print(phone2.getNumber());

  phone3.receiveCall("Max");
  print(phone3.getNumber());
}

class Phone {
  String number;
  String model;
  double weight;

  Phone({required this.number, required this.model, required this.weight});

  void receiveCall(String name) {
    print('$name is calling');
  }

  String getNumber() {
    return number;
  }

  void sendMessage(String phone_number) {
    print(phone_number);
  }
}

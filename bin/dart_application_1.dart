import 'dart:io';
import 'dart:math';

/** Задание 1
double left = 0;
double right = 100;
double x = 0;
int guess_count = 0;
String? answer;

void main(List<String> args) {
  print(guessNumber());
}

int guessNumber() {
  while (true) {
    x = (left + right) / 2;

    getInfo();

    if (answer == 'less') {
      right = x;
    } else if (answer == 'greater') {
      left = x;
    } else if (answer == 'yes') {
      break;
    }

    guess_count++;
  }

  return guess_count;
}

void getInfo() {
  print('Is it ${x.round()}');
  answer = stdin.readLineSync();
}

*/

//Задание 3
void main(List<String> args) {
  String? myNum;
  double num = Random().nextDouble() * 100;
  print(num);

  while (true) {
    myNum = stdin.readLineSync();
    if (myNum == num.round().toString()) {
      print('yes');
      break;
    } else if (int.parse(myNum!) > num) {
      print('less');
    } else if (int.parse(myNum) < num) {
      print('greater');
    }
  }
}

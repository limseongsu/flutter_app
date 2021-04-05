import 'dart:io';

void main() {
  String a = stdin.readLineSync();

  for (int i = 0; i < a.length; i++) {

    if (a[i] != a[i + 1]) {
      print('No');
      break;
    } else {
      print('$a');
      break;
    }
  }
}



//태풍의 간격

import 'dart:io';
void main() {

  List<int> inputs = [];
  for (int i = 0; i < 5; i++) {
    inputs.add(int.parse(stdin.readLineSync()));
  }

  for (int i = 1; i < 5; i++) {
    print(inputs[i] - inputs[i - 1]);
  }
}

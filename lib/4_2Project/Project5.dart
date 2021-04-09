
//태풍의 간격

import 'dart:io';
void main() {

  List<int> inputs = [];
  for (int i = 0; i < 5; i++) {
    inputs.add(int.parse(stdin.readLineSync())); //()입력 값을 int로 바꾸고 inputs에 값을 추가함.
  }

  for (int i = 1; i < 5; i++) {
    print(inputs[i] - inputs[i - 1]); // i 번째 - (i 번째 -1 번째 )값.
  }
}

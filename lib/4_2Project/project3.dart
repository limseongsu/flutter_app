
// 부족한 카드
import 'dart:io';
void main() {
List<int> inputs = [1, 2, 3, 4, 5];
for (int i = 0; i < 4; i++) {
  inputs.remove(int.parse(stdin.readLineSync()));
}
 // 남은 수
 print(inputs[0]);
}
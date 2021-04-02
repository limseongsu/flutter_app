import 'dart:math';
import 'dart:io';
//
// // 짝수 홀수
//
// void main() {
//   List<String> result = stdin.readLineSync().split(' ');
//
//   int N = int.parse(result[0]);
//   int M = int.parse(result[1]);
//
//   if (N.isEven && M.isEven) {
//     print('no');
//   } else if (N.isOdd && M.isOdd) {
//     print('no');
//   } else if (N.isEven && M.isOdd) {
//     print('yes');
//   } else if (N.isOdd && M.isEven) {
//     print('yes');
//   }
//   return;
// }

void main() {
  List<String> inputs = stdin.readLineSync().split(' ');
  int N = int.parse(inputs[0]);
  int M = int.parse(inputs[1]);

  //둘 다 짝수거나 둘 다 홀수거나
  if ((N.isEven && M.isEven) || (N.isOdd && M.isOdd)) {
    print('NO');
  } else {
    print('YES');
  }

}

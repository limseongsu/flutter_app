import 'dart:math';
import 'dart:io';

void main() {
  List<String> result = stdin.readLineSync().split(' ');

  int N = int.parse(result[0]);
  int M = int.parse(result[1]);

  if (N.isEven && M.isEven) {
    print('no');
  } else if (N.isOdd && M.isOdd) {
    print('no');
  } else if (N.isEven && M.isOdd) {
    print('yes');
  } else if (N.isOdd && M.isEven) {
    print('yes');
  }
  return;
}

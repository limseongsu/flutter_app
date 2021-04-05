import 'dart:io';

void main() {
  List<String> q1 = stdin.readLineSync().split(' ');
  int m = int.parse(q1[0]);
  int n = int.parse(q1[1]);
  String result = '';
  for (int i = 0; i < 10; i++) {
    int a = m + n * i;
    result += '$a ';
  }
  print(result);
}

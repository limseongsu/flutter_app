// 고대 문자
import 'dart:io';
void main() {
  String E = stdin.readLineSync();

  int result = 0;
  for (int i = 0; i < E.length; i++)
    if(E[i] == '<') {
      result += 10;
    }else if (E[i] == '/') {
      result += 1;
    }
  print(result);
}

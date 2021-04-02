// 빼빼로 파티
import 'dart:io';

void main() {
  String s = stdin.readLineSync();

  if(s.length >= 11) {
  } else {
    print(11 - s.length);
  }
}
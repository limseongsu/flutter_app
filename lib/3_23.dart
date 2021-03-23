import 'dart:math';

void main() {
  print('주사위 : ${dice()}');
}

int dice() {
  // 1~6
  var random = new Random();
  return random.nextInt(6) + 1; //print(random.nextInt(6) + 1);를 삭제해줌
}
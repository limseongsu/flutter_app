import 'dart:math';

void main() {
  print('주사위 : ${dice()}');
}

int dice() {
  // 1~10 주사위
  var random = new Random();
  return random.nextInt(10) + 1; //print(random.nextInt(6) + 1);를 삭제해줌

}
int dice2() {
  var random = new Random();
  return random.nextInt(10) + 1;  //1~10주사위
}
int dice3() {
  var random = new Random();
  return random.nextInt(9) + 1; //1~9주사위
}
int dice4() {
  var random = new Random();
  return random.nextInt(8) + 1; //1~8주사위
}
int dice5() {
  var random = new Random();
  return random.nextInt(7) + 1; //1~7주사위
}
int dice6() {
  var random = new Random();
  return random.nextInt(6) + 1; //1~6주사위
}


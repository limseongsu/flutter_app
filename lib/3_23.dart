import 'dart:math';

void main() {
  print('주사위 : ${dice(6)}');
}

// 정수 num 하나를 받아서 정수 1 ~ num 까지를 반환한다.
int dice(int num) {
  // 1~10 주사위
  var random = new Random();
  return random.nextInt(num) + 1; //print(random.nextInt(6) + 1);를 삭제해줌

}



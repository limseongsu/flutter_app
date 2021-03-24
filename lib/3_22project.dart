import 'dart:io';
import 'dart:math';

void main() {
  print('점을 보세요');
  print('이름을 입력해 주세요');
  String name = stdin.readLineSync();
  print('나이를 입력해 주세요');
  String ageString = stdin.readLineSync();
  int age = int.parse(ageString);
  var rng = Random();
  int fortune = rng.nextInt(4) + 1;
  print('"점꾀가 나왔습니다!"');
  print('"$age살의 $name씨, 당신의 운세번호는 $fortune 입니다."');
  print('"1:대박, 2:중박, 3:보통, 4:망"');

}

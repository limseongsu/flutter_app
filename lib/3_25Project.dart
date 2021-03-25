
import 'dart:math';

void main() {
Cleric cleric = Cleric();
cleric.name = '성직자';
cleric.selfAid();
cleric.now();
cleric.pray(1);
}
class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  final int maxHp = 50;
  final int maxMp = 10;

  void now() {
    print('$hp');  //현재 체력과 현재 마나보유량
    print('$mp');
  }

  void selfAid() {
    print('이기적인 힐');
    if (mp < 5) {
      print('사용할수없습니다.');
    } else {
      mp = mp - 5;
      hp = maxHp;
    }
  }
  int pray(int sec) {
    Random flow = Random();
    int add = sec + flow.nextInt(3);
    mp = mp + add;
    if(mp < maxMp + 1){
      mp = 10;
    }
     return add;
  }
}

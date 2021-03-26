import 'dart:math'; // ctrl + alt + O = 안쓰는 import를 제거 (패키지)

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  final int maxHp = 50;
  final int maxMp = 10;

  void now() {
    print('현재 체력은$hp입니다.'); //현재 체력과 현재 마나보유량
    print('현재 마나는$mp입니다.');
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

    if (maxMp < add + mp) {
      add = maxMp - mp;
    }
    if (mp + add > maxMp) {
      mp = maxMp; //mp =min(mp + add, maxMP);
    } else {
      mp = mp + add; // mp += add; , mp = mp + 1 == mp++
    }
    return add;
  }
}
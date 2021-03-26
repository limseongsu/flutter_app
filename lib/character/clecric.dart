import 'dart:math'; // ctrl + alt + O = 안쓰는 import를 제거 (패키지)

class Cleric {
  String _name;
  int _hp;
  int _mp;
  static final int maxHp = 50;
  static final int maxMp = 10;


  Cleric(this._name, this._hp, this._mp);

  String get name => _name;
  int get hp => _hp;
  int get mp => _mp;

  void selfAid() {
    print('이기적인 힐');
    if (_mp < 5) {
      print('사용할수없습니다.');
    } else {
      _mp = _mp - 5;
      _hp = maxHp;
    }
  }

  int pray(int sec) {
    Random flow = Random();
    int add = sec + flow.nextInt(3);
    _mp = _mp + add;

    if (maxMp < add + _mp) {
      add = maxMp - _mp;
    }
    if (_mp + add > maxMp) {
      _mp = maxMp; //mp =min(mp + add, maxMP);
    } else {
      _mp = _mp + add; // mp += add; , mp = mp + 1 == mp++
    }
    return add;
  }
}
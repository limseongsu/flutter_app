// Hero 타입을 새로 작성
import 'package:flutter_app/equipment/sword.dart';

class Hero {
  // static
  static int money = 100;
  // field, global variable, 전역변수
  String _name;
  int _hp;
  Sword sword;

  // 생성자 (constructor)
  Hero(this._name, this._hp);

  // 외부에서 읽기위해 제공하는 프로퍼티
  int get hp => _hp; //{ return _hp;}

  void attack() {
    // local variable, 지역변수 hp
    _hp = _hp - 5;
    print('$_name이 공격!!');

    //칼이 있으면 칼을 휘두르자
    if (sword != null) {
      sword.attack();
    }
  }
}

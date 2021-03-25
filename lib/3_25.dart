void main() {
  //Hero hero2 = Hero(); //인스턴스를 생성
  //Hero hero = Hero(); //인스턴스를 생성
  // hero.name = '용사';
  // hero.hp = 100;
  // hero.attack();
//  hero2.name = '검사';
  // hero2.hp = 100;
//  hero2.attack();
  // print(hero.name);
  Cleric cleric = Cleric();
  cleric.name = '성직자';
  cleric.selfAid();
}

// Hero 타입을 새로 작성
class Hero {
  // field, global variable, 전역변수
  String name;
  int hp;

  void attack() {
    // local variable, 지역변수 hp
    int hp = 100;
    print('공격!');
  }
}

class Cleric {
  String name;
  int hp = 50;
  int mp = 10;
  final int maxHp = 50;
  final int maxMp = 10;

  void selfAid() {
    print('이기적인 힐');
    if (mp < 5) {
      print('사용할수없습니다.');
    } else {
      mp = mp - 5;
      hp = maxHp;

      print('$hp');
      print('$mp');
    }
  }

  void pray() {

  }
}

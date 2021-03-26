
import 'package:flutter_app/character/hero.dart';
import 'package:flutter_app/equipment/sword.dart';

void main() {
  // 생성자를 통한 초기화   인스턴스
  // 불의검을 생성   인스턴스
  Hero hero = Hero('홍길동', 50);
  Sword sword = Sword('불의검', 100, 500, '불을 내뿜는다');

  // 홍길동한테 불의검 주기
  hero.sword = sword;
  // 홍길동이 공격
  hero.attack();

  // hp 프로퍼티 (property)
  print(hero.hp);

  // 더 이상 이름, hp 설정을 할 수 없다.
  // 버그를 줄이기 위해서, (사람이 실수하는 것을 막기 위해)




}
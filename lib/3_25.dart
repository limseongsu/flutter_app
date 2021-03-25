

void main() {
 Hero hero = Hero();    //인스턴스를 생성
 Hero hero2 = Hero();    //인스턴스를 생성

 hero.name = '용사';
 hero.hp = 100;
 hero.attack();
 hero2.name = '검사';
 hero2.hp = 100;
 hero2.attack();

 print(hero.name);

}
// Hero 타입을 새로 작성
class Hero {
  String name;
  int hp;
  void attack(){
    print('공격!');
  }
}
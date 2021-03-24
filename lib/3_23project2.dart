
import 'package:flutter/cupertino.dart';

void main() {
  email();

  print('${title}에 메일을 전송합니다');
}

void introduceOneself() {

  String name = '성수';
  int age = 25;
  double height = 171.3;
  String gender = '남자';

  print('안녕하세요? 저는 $name입니다.');
  print('나이는 $age살이며,');
  print('$height는 171.3cm입니다');
  print('성별은 $gender입니다.');

}

void email() {

  String title = 'tjdtn2323@gmail.com';
  String address = 'Project';
  String text = 'Today Project';


  print('제목: $address');
  print('본문: $text');
}


import 'dart:math';


void main() {
// email('주소', 'email', '메일 본문');   //String 3개(주소,email,본문)이 파라미터
email2(title: '안녕하세요', address: 'email', text: '메일 본문');

}
//print(calcTriangleArea(10,5));
//print(calcCircleArea(3));


void introduceOneself() {

  String name = '성수';
  int age = 25;
  double height = 171.3;
  String gender = '남자';

  print('안녕하세요? 저는 $name입니다.');
  print('나이는 $age살이며,');
  print('키는$height입니다');
  print('성별은 $gender입니다.');

}
// title 인자로 들어온 값은 뭐야?
void email(String title, String address, String text) {

  print('$title에 메일을 전송합니다');
  print('제목: $address');
  print('본문: $text');
}
void email2({String title, String address, String text}) {
  print('$address 에 메일을 전송합니다');

  if (title == null) {
    title = '제목 없음';
  }
}

double calcTriangleArea(double bottom, double height) {

  return bottom * height / 2;
}
double calcTriangleArea2(double bottom, double height) {

  double result = bottom * height / 2;
  return result;
}
double calcTriangleArea3(double bottom, double height)
  => bottom * height / 2;

double calcCircleArea(double radius) {

  return pi * radius * radius;
}

void main() {

  Exam exam = Exam();
  print(exam.soultion(10, 3));
  print(exam.soultion(100, 30));
  print(exam.soultion(40, 30));


}

class Exam{
  String soultion(int m, int n){


  int a = m % n; //나머지
  int b = m ~/ n; //몫
  String result = '$b, $a';

  return result;
  }
}
//List

void main() {
  int kor = 100;
  int math = 50;
  int english = 70;
  int science = 30;

  int sum = total(kor, math, english, science);
  double average = sum / 3;

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
  //.toStringAsFixed(2)소수점 두번째 자리에서 끊음.
}

int total(int korean, int math, int english, int science) {
  return korean + math + english;
}

double avg(int korean, int math, int english, science) {
  return (korean + math + english) / 4;
}
//List

void main() {
  //int kor = 100; int math = 50;  int english = 70;  int science = 30;
  //List를 사용함으로써 사용을 안하게 됨
  List<int> scores = [100, 50, 70, 30];

  int sum = total(scores[0], scores[1], scores[2], scores[3]);
  double average = avg(scores[0], scores[1], scores[2], scores[3]);

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
  //.toStringAsFixed(2)소수점 두번째 자리에서 끊음.
}

int total(int korean, int math, int english, int science) {
  return korean + math + english + science;
}

double avg(int korean, int math, int english, science) {
  return total(korean, math, english, science) / 4;
}
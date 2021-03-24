//List

void main() {
  //int kor = 100; int math = 50;  int english = 70;  int science = 30;
  //List를 사용함으로써 사용을 안하게 됨
  List<int> scores = [100, 50, 70, 30];


  int sum = total(scores);
  double average = avg(scores);

  print('합계 : $sum');
  print('평균 : ${average.toStringAsFixed(2)}');
  //.toStringAsFixed(2)소수점 두번째 자리에서 끊음.
}

int total(List<int> scores) {
  print(scores.length); // List의 갯수(scores의)
  int result = 0;
  for (int i = 0; i < scores.length; i++) {
    result = result + scores[i];
  }
  return result;
}

double avg(List<int> scores) {
  return total(scores) / scores.length;
}

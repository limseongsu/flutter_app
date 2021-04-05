import 'dart:io';

void main() {

  List<int> card = [1, 2, 3, 4, 5];

  for (int i = 0; i < 4; i++) {
    card.remove(int.parse(stdin.readLineSync()));

    //남은 카드(리스트)의 리무브하고 남은 첫번째 결과값.
  }print(card[0]);
}
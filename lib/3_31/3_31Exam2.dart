import 'dart:io';
void main() {
  String input = stdin.readLineSync();  // PAIZA
  String result = '';
  for (int i = 0; i < input.length; i++) {
    String ch = input[i];
    if (ch == 'A') {
      result += '4';
    } else if (ch == 'E') {
      result += '3';
    } else if (ch == 'G') {
      result += '6';
    } else if (ch == 'I') {
      result += '1';
    } else if (ch == 'O') {
      result += '0';
    } else if (ch == 'S') {
      result += '5';
    } else if (ch == 'Z') {
      result += '2';
    } else {
      result = result + ch;   // result += ch;
    }
  }
  print(result);
}

// import 'dart:io';
// void main() {
//   String input = stdin.readLineSync();  // PAIZA
//   Leet leet = Leet(input);
//   print(leet.toLeet()); // P4IZ4
// }
// class Leet {
//   String word;
//   Leet(this.word);
//   String toLeet() {
//     String result = '';
//     for (int i = 0; i < word.length; i++) {
//       String ch = word[i];
//       if (ch == 'A') {
//         result += '4';
//       } else if (ch == 'E') {
//         result += '3';
//       } else if (ch == 'G') {
//         result += '6';
//       } else if (ch == 'I') {
//         result += '1';
//       } else if (ch == 'O') {
//         result += '0';
//       } else if (ch == 'S') {
//         result += '5';
//       } else if (ch == 'Z') {
//         result += '2';
//       } else {
//         result = result + ch;   // result += ch;
//       }
//     }
//     return result;
//   }
// }



// import 'dart:io';
// void main() {
//   String input = stdin.readLineSync();  // PAIZA
//   Leet leet = Leet(input);
//   print(leet.toLeet()); // P4IZ4
// }
// // Leet 클래스
// class Leet {
//   // Map : 자료를 저장하는 방법 중 하나
//   var rule = {
//     'A': '4',
//     'E': '3',
//     'G': '6',
//     'I': '1',
//     'O': '0',
//     'S': '5',
//     'Z': '2',
//   };
//   // Leet 클래스를 생성할 때 입력받을 문자열
//   String word;
//   // 생성자
//   Leet(this.word);
//   // 규칙을 적용한 문자열을 반환하는 메서드
//   String toLeet() {
//     // 결과를 저장할 변수
//     String result = '';
//     // word의 문자열의 수 만큼 반복
//     for (int i = 0; i < word.length; i++) {
//       String ch = word[i]; // 원래의 i번째 한글자
//       String converted = rule[ch]; // 변경된 한글자
//       if (converted == null) {
//         // 변경했더니 null이면
//         result = result + ch; // 원래 한글자를 붙이고
//       } else {
//         result = result + converted; // null이 아니면 변경된 한글자를 붙인다
//       }
//     }
//     // 결과를 리턴
//     return result;
//   }
// }


// import 'dart:io';
// void main() {
//   String input = stdin.readLineSync();  // PAIZA
//   Leet leet = Leet(input);
//   print(leet.toLeet()); // P4IZ4
// }
// // Leet 클래스
// class Leet {
//   // Map : 자료를 저장하는 방법 중 하나
//   var rule = {
//     'A': '4',
//     'E': '3',
//     'G': '6',
//     'I': '1',
//     'O': '0',
//     'S': '5',
//     'Z': '2',
//   };
//   // Leet 클래스를 생성할 때 입력받을 문자열
//   String word;
//   // 생성자
//   Leet(this.word);
//   // 규칙을 적용한 문자열을 반환하는 메서드
//   String toLeet() {
//     // 결과를 저장할 변수
//     String result = '';
//     // word의 문자열의 수 만큼 반복
//     for (int i = 0; i < word.length; i++) {
//       String ch = word[i]; // 원래의 i번째 한글자
//       result += rule[ch] ?? ch;
//     }
//     // 결과를 리턴
//     return result;
//   }
// }


// import 'dart:io';
// void main() {
//   String input = stdin.readLineSync();  // PAIZA
//   Leet leet = Leet(input);
//   print(leet.toLeet()); // P4IZ4
// }
// // Leet 클래스
// class Leet {
//   // 변수의 이름은 명사로 한다. 메서드의 이름은 동사로 시작한다
//   List<String> original = ['A', 'E', 'G', 'I', 'O', 'S', 'Z'];
//   List<String> change = ['4', '3', '6', '1', '0', '5', '2'];
//   // Leet 클래스를 생성할 때 입력받을 문자열
//   String word;
//   // 생성자
//   Leet(this.word);
//   // 규칙을 적용한 문자열을 반환하는 메서드
//   String toLeet() {
//     // 결과를 저장할 변수
//     String result = '';
//     // word의 문자열의 수 만큼 반복
//     for (int i = 0; i < word.length; i++) {
//       String ch = word[i]; // 원래의 i번째 한글자
//       String converted = ch;
//       for (int j = 0; j < original.length; j++) {
//         if (ch == original[j]) {
//           converted = change[j];
//           break;
//         }
//       }
//       result += converted;
//     }
//     // 결과를 리턴
//     return result;
//   }
// }
// 별로
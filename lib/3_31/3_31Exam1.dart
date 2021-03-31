import 'dart:io';

import 'dart:math';

void main() {
  List<String> inputLine = stdin.readLineSync().split(' ');
  int a = int.parse(inputLine[0]); //공사좌표
  int b = int.parse(inputLine[1]); //공사좌표
  int R = int.parse(inputLine[2]); // 공사장 반경

  Construction construction = Construction(a, b, R);
  Park park = Park();
  int N = int.parse(stdin.readLineSync()); //공사 그늘의 수
  // 공원 생성

  // 공사장을 공원에 셋팅
  for (int i = 0; i < N; i++) {
    List<String> inputLine = stdin.readLineSync().split(' ');
    int x = int.parse(inputLine[0]);
    int y = int.parse(inputLine[1]);
    // 나무를 생성
    Tree tree = Tree(x, y);
    park.trees.add(tree);
  }
  for (int i = 0; i < park.trees.length; i++) {
    if (construction.isNoisy(park.trees[i]) == false) {
      print('silent');
    } else {
      print('noisy');
    }
  }

  // 시끄러운지 판단해서 출력
}

class Tree {
  int x;
  int y;

  Tree(this.x, this.y);
}

class Construction {
  int a;
  int b;
  int R;

  Construction(this.a, this.b, this.R);

  bool isNoisy(Tree tree) {
    if ((tree.x - a) * (tree.x - a) + (tree.y - b) * (tree.y - b) >= R * R) {
      return false;
    }
    return true;
  }
}

class Park {
  List<Tree> trees = [];
}

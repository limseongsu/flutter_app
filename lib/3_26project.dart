

import 'package:flutter_app/character/clecric.dart';

void main() {
  
  Cleric cleric = Cleric('아서스', 40, 5);
print('${cleric.hp},${cleric.mp} ');
  cleric.selfAid();

  
}
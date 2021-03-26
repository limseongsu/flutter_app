class Sword {
  String _name;
  int _damage;
  int _price;
  String _description;

  Sword(this._name, this._damage, this._price, this._description);

  String get name => _name;

  int get damage => _damage;

  int get price => _price;

  String get description => _description;

  void attack() {
    print('$name으로 $damage를 주었다!!!');
  }
}
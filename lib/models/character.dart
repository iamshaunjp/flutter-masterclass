class Character {

  // constructor 
  Character({ 
    required this.name, required this.slogan, required this.id,
  });

  // fields
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  void toggleIsFav() {
    _isFav = !_isFav;
  }

}
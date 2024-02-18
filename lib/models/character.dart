import 'package:flutter_masterclass/models/stats.dart';

class Character with Stats {

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
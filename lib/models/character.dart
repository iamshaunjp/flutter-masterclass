import 'package:flutter_masterclass/models/stats.dart';
import 'package:flutter_masterclass/models/vocation.dart';

class Character with Stats {

  // constructor 
  Character({ 
    required this.name, required this.slogan, required this.vocation, required this.id,
  });

  // fields
  final Vocation vocation;
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  // getters
  get isFav => _isFav;

  // methods
  void toggleIsFav() {
    _isFav = !_isFav;
  }

}
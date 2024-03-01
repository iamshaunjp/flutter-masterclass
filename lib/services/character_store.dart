import 'package:flutter/material.dart';
import 'package:flutter_masterclass/models/character.dart';
import 'package:flutter_masterclass/services/firestore_service.dart';

class CharacterStore extends ChangeNotifier {

  final List<Character> _characters = [];

  get characters => _characters;

  // add character
  void addCharacter(Character character) async {
    await FirestoreService.addCharacter(character);

    _characters.add(character);
    notifyListeners();
  }

  // save (update) character
  Future<void> saveCharacter(character) async {
    await FirestoreService.updateCharacter(character);
    return;
  }

  // remove character


  // initially fetch characters
  void fetchCharactersOnce() async {
    if (characters.length == 0) {
      final snapshot = await FirestoreService.getCharactersOnce();
      
      for (var doc in snapshot.docs) {
        _characters.add(doc.data());
      }

      notifyListeners();
    }
  }

}

import '../models/character.dart';

abstract class CharacterService {
  Future<void> createNewCharacter(Character char);
}

class CharacterServiceImpl extends CharacterService {
  @override
  Future<void> createNewCharacter(Character char) async {
    print(char.toString());
  }
}

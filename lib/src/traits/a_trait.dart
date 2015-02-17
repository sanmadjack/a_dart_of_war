part of a_dart_of_war;

abstract class ATrait {
  Character character;
  
  static const int COST_PER_LEVEL = 100;
  
  int _level = 0;
  
  int get level {
    return _level;
  }

  
  ATrait(Character character) {
    this.character = character;
  }

}
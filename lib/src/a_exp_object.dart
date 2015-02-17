part of a_dart_of_war;

abstract class AExpObject extends Observable {
  static const int COST_PER_LEVEL = 100;
  

  @observable int get maxLevel; 
  
  int _exp = 0;
  int _level = 1;
  
  @observable int get exp {
    return _exp;
  }
  @observable int get level {
    return _level;
  }
  bool get hasEnoughExpToLevel {
    return (level < maxLevel && _exp >= COST_PER_LEVEL);
  }
  
  Character character;
  
  AExpObject(this.character);
  
   void addEXP(int amount, [bool take_from_character = true]) {
     if(take_from_character) {
       character.removeExp(amount);
     }
     _exp += amount;
     this.notifyPropertyChange(#exp, _exp+COST_PER_LEVEL, _exp);
     
     checkForNeedToLevel();
   }

   void checkForNeedToLevel() {
     if(hasEnoughExpToLevel) {
       _level += 1;
       _exp -= COST_PER_LEVEL;
       this.notifyPropertyChange(#level, _level-1, _level);
       this.notifyPropertyChange(#exp, _exp+COST_PER_LEVEL, _exp);
     }     
   }
   
}
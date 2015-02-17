part of a_dart_of_war;

abstract class AAttribute extends AExpObject {
  static const int _DEFAULT_MAX = 8;

  String abbreviation;
  Attributes attributeEnum; 
  
  AAttribute(Character character, this.abbreviation, this.attributeEnum): super(character);
  
  @override int get maxLevel {
    return getAdjustedLevelMax();
  }

  int getAdjustedLevelMax() {
    return 8;
  }
  
 }
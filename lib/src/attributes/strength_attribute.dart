part of a_dart_of_war;

class StrengthAttribute extends AAttribute {

  StrengthAttribute(Character character): super(character, "STR", Attributes.STR);
  
  @override int getAdjustedLevelMax() {
    int output = _DEFAULT_MAX;
    switch(character.phenotype) {
      case Phenotypes.aerospace:
        output = 7;
        break;
      case Phenotypes.elemental:
        output = 9;
        break;
    }
    
    return output;
  }

}
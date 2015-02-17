part of a_dart_of_war;

class ReflexesAttribute extends AAttribute {

  ReflexesAttribute(Character character): super(character, "REF", Attributes.REF);
  
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
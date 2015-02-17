part of a_dart_of_war;

class EdgeAttribute extends AAttribute {
  
  EdgeAttribute(Character character): super(character, "EDG", Attributes.EDG);
  
  @override int getAdjustedLevelMax() {
    int output = AAttribute._DEFAULT_MAX;
    if(character.phenotype==Phenotypes.normal_human) {
      output++;
    }
    
    return output;
  }

}
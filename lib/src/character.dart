part of a_dart_of_war;

class Character extends Observable {
  
  @published String name = '';
  
  @observable Map<String,AAttribute> attributes = new ObservableMap<String,AAttribute>();
  @observable List<ASkill> skills = new List<ASkill>();
  @observable List<ATrait> traits = new List<ATrait>();
  
  static const INITIAL_EXP = 5000;
  
  @observable int currentExp = INITIAL_EXP;
  
  Phenotypes get phenotype {
    return Phenotypes.normal_human;
  }
  
  Character() {
    attributes["STR"] = new StrengthAttribute(this);
    attributes["BOD"] = new BodyAttribute(this);
    attributes["REF"] = new ReflexesAttribute(this);
    attributes["DEX"] = new DexterityAttribute(this);
    attributes["INT"] = new IntelligenceAttribute(this);
    attributes["WIL"] = new WillpowerAttribute(this);
    attributes["CHA"] = new CharismaAttribute(this);
    attributes["EDG"] = new EdgeAttribute(this);
  }
  
  void addExp(int exp) {
    currentExp += exp;
  }

  
  void removeExp(int exp) {
    if(exp>currentExp) {
      throw new Exception("The character does not have enough EXP to spend ${exp}");
    }
    currentExp -= exp;
  }
}
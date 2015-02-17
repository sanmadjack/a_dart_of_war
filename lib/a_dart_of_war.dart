library a_dart_of_war;

import 'package:polymer/polymer.dart';

part 'src/a_exp_object.dart';

part 'src/attributes/a_attribute.dart';
part 'src/attributes/edge_attribute.dart';

part 'src/skills/a_skill.dart';

part 'src/traits/a_trait.dart';
part 'src/traits/phenotype_trait.dart';


part 'src/character.dart';

enum Attributes {
  STR,
  BOD,
  REF,
  DEX,
  INT,
  WIL,
  CHA,
  EDG
}

enum Phenotypes {
  normal_human,
  aerospace,
  elemental,
  mechwarrior
}
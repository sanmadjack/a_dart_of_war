// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:polymer/polymer.dart';
import '../a_dart_of_war.dart';

/// A Polymer `<character-element>` element.
@CustomTag('character-element')
class CharacterElement extends PolymerElement {

  Character character = new Character();
  
  /// Constructor used to create instance of CharacterElement.
  CharacterElement.created() : super.created();


  void addExpToAttribute(Event event, var detail, var target) {
    String att = target.dataset['att'];
    character.attributes[att].addEXP(10);

  }
  
}

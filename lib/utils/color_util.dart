import 'package:flutter/material.dart';
import 'dart:math';
class ColorUtil{
  static getUniqueColor(){
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }
}
import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

RandomColor _randomColor = RandomColor();

Color _color ;


Color getRandomColor(){
  _color = _randomColor.randomColor(
  colorBrightness: ColorBrightness.light);
  return _color;
}
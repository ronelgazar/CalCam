import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Constants {
  static final double TITLE_FONT_SIZE = 15.0;
  static final List<String> letters =["א","ב","ג","ד","ה","ו","ז","ח","ט","י","כ","ך","ל","מ","ם","נ","ן","ס","ע","פ","ף","צ","ץ","ק","ר","ש","ת"];// א is 0
}
class ProgressBarConstants{
    static final double PROGRESS_BAR_WIDTH = 300;
    static final int PROGRESS_BAR_TOTAL_STEPS = 7;
    static final List<Color>  PROGRESS_BAR_OUTLINE_COLORS = [Colors.grey[400],Colors.grey[400]]; 
    static final List<Color>  PROGRESS_BAR_PROGRRSS_COLORS = [Colors.yellowAccent, Colors.greenAccent];

}
class BuildTileConstants{
  static final Color BUILD_TILE_SHADOW_COLOR = Color(0x802196F3);


}
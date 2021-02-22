import 'dart:math';

import 'package:calcam/Utils/Constants.dart';

String generatelater(){
  var rng = new Random();
  // return rng.nextInt(Cons)
  return Constants.letters[rng.nextInt(Constants.letters.length)];

}
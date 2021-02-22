import 'package:calcam/Utils/getDocUid.dart';
import 'package:flutter/material.dart';

void UpdateDoc(String field,var value){
  getDoc().update({field: value,}
  );
}
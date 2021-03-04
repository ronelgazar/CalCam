import 'package:calcam/Utils/getDocUid.dart';

void UpdateDoc(String field,var value){
  getDoc().update({field: value,}
  );
}

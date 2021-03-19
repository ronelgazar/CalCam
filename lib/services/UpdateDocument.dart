import 'package:calcam/Utils/getDocUid.dart';

void updateDoc(String field,var value){
  getDoc().update({field: value,}
  );
}

import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FireStorageService extends ChangeNotifier {
  FireStorageService();
  static Future<dynamic> loadImage(BuildContext context, String image) async {
    return await FirebaseStorage.instance.ref().child(image).getDownloadURL();
  }

}
  Future<Widget> getImage(BuildContext context, String image) async {
    Image img;
    await FireStorageService.loadImage(context, image).then((downloadUrl) {
        img = Image.network(
            downloadUrl.toString(),
            fit: BoxFit.scaleDown,
        );
    });
    return img;
}

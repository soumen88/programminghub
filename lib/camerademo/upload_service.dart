import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UploadService{

  Future<void> upload(String imagePath) async{
    await Firebase.initializeApp();
    File photo = File(imagePath);
    int filePathIndex  = imagePath.lastIndexOf("/");
    ///.../image.jpg
    String fileName = imagePath.substring(filePathIndex, imagePath.length);
    final destination = "files/capturedimages/";
    final ref = await FirebaseStorage.instance
        .ref(destination)
        .child(fileName);

    await ref.putFile(photo);

  }

}
import 'dart:io';

import 'package:flutter/material.dart';

class CameraImagePreviewScreen extends StatelessWidget{
  String imagePath;

  CameraImagePreviewScreen({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera Preview Screen"),
      ),
      body: Center(
        child: Image.file(File(imagePath)),
      ),
    );
  }

}
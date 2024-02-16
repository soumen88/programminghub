import 'package:permission_handler/permission_handler.dart';

class PermissionUtils{

  Future<bool> askCameraPermission() async{
    var status = await Permission.camera.status;
    if(status.isDenied){
      Map<Permission, PermissionStatus> permissionsMap = await [
        Permission.camera,
        Permission.microphone
      ].request();
    }

    bool isCameraPermissionGranted = await Permission.camera.status.isGranted;
    bool isMicrophonePermissionGranted = await Permission.microphone.status.isGranted;
    bool allPermissionsGranted = isCameraPermissionGranted && isMicrophonePermissionGranted;
    return Future.value(allPermissionsGranted);
  }

}
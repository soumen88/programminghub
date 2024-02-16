import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:programminghub/base/logger_utils.dart';
import 'package:programminghub/base/permission_utils.dart';
import 'package:programminghub/camerademo/camera_image_preview_screen.dart';
import 'dart:math' as math;

import 'display_camera_video_preview_screen.dart';

class CameraScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _CameraScreenState();
  }

}

class _CameraScreenState extends State<CameraScreen>{
  final _logger = LoggerUtils();
  final _TAG = "CameraScreen";
  final _permissionUtils = PermissionUtils();
  ///List of all cameras that are present in the device
  List<CameraDescription> _camerasList = [];

  //1 -> Front camera shall be displayed
  //0 -> Back camera shall be displayed
  int _selectedCameraId = 1;

  CameraController? _cameraController;

  bool _isCameraRecordingOn = false;

  ///Step 1 - Initialize camera
  Future<void> initialize() async{
    await availableCameras().then((List<CameraDescription> totalNoOfCameras){
      _camerasList = totalNoOfCameras;
    }).then((value) async{
      await cameraConfigure(_camerasList[_selectedCameraId]);
    })
        .onError((error, stackTrace){
      _logger.log(TAG: _TAG, message: "No cameras where detected");
    });
  }

  ///Step 2 - Configuration for camera
  Future<void> cameraConfigure(CameraDescription currentCamera) async{
    _cameraController = CameraController(currentCamera, ResolutionPreset.high);

    await _cameraController?.initialize();

    _cameraController?.addListener(() { });

    setState(() {

    });
  }

  Future<void> switchCamera() async{
    CameraLensDirection currentLensDirection = _cameraController!.description.lensDirection;
    if(currentLensDirection == CameraLensDirection.front){
      await cameraConfigure(_camerasList[0]);
    }
    else{
      await cameraConfigure(_camerasList[1]);
    }
  }

  ///Step 3 - Shooting the image
  Future<void> clickPhoto() async{
    XFile? file = await _cameraController?.takePicture();
    String imagePath = file?.path ?? '';
    _logger.log(TAG: _TAG, message: "Image path $imagePath");
    Navigator.push(context, MaterialPageRoute(builder: (context) => CameraImagePreviewScreen(imagePath: imagePath)));
  }

  Future<void> checkPermissions() async{
    bool isAllPermissionsGranted = await _permissionUtils.askCameraPermission();
    if(isAllPermissionsGranted){
      initialize();
    }
  }

  Future<void> shootVideoAndDisplayPreview() async{
    print("Started with video recording");
    await _cameraController?.startVideoRecording();
    _isCameraRecordingOn = true;
    setState(() {

    });
  }

  Future<void> stopVideoRecordingInCamera() async{
    if(_cameraController!.value.isRecordingVideo){
      _isCameraRecordingOn = false;
      XFile? cameraVideo = await _cameraController?.stopVideoRecording();
      print("Path for video ${cameraVideo?.path}");
      Navigator.push(context, MaterialPageRoute(builder: (context) => DisplayCameraVideoPreviewScreen(videoPath: cameraVideo?.path ?? "")));
    }

  }

  @override
  void initState() {
    _logger.log(TAG: _TAG, message: "Inside Init state");
    checkPermissions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: previewCameraOutput(),
            ),
            Positioned(
                bottom: 40,
                child: Row(
                  children: [
                    ///Switching camera
                    GestureDetector(
                      onTap: (){
                          switchCamera();
                      },
                      child: Icon(
                        Icons.sync,
                        color: Colors.white,
                        size: 60,
                      ),
                    ),
                    SizedBox(width: 30,),
                    ///Shoot image
                    GestureDetector(
                      onTap: (){
                          clickPhoto();
                      },
                      child: Icon(
                        Icons.circle_outlined,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                    SizedBox(width: 30,),
                    ///Video recording
                    GestureDetector(
                      onTap: (){
                        _isCameraRecordingOn = !_isCameraRecordingOn;
                        if(_isCameraRecordingOn == false){
                          shootVideoAndDisplayPreview();
                        }
                        else{
                          stopVideoRecordingInCamera();
                        }
                        setState(() {

                        });
                      },
                      child: _isCameraRecordingOn ? Icon(
                        Icons.fiber_manual_record,
                        color: Colors.red,
                        size: 60,
                      ) : Icon(
                        Icons.video_call,
                        color: Colors.white,
                        size: 60,
                      ),
                    )
                  ],
                )
            )
          ],
        )
    );
  }

  Widget previewCameraOutput(){
    if(_cameraController != null && _cameraController!.value.isInitialized){
      return AspectRatio(
        aspectRatio: _cameraController!.value.aspectRatio,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: CameraPreview(_cameraController!),
        )
      );
    }
    else{
      return Center(
        child: Text("Camera Loading..."),
      );
    }
  }

}
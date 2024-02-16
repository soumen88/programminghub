import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:programminghub/base/logger_utils.dart';
import 'package:video_player/video_player.dart';

class DisplayCameraVideoPreviewScreen extends StatefulWidget{
  String videoPath;

  DisplayCameraVideoPreviewScreen({required this.videoPath});

  @override
  State<StatefulWidget> createState() {
    return _DisplayCameraVideoPreviewScreenState();
  }

}

class _DisplayCameraVideoPreviewScreenState extends State<DisplayCameraVideoPreviewScreen>{

  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  final _logger = LoggerUtils();
  final _TAG = "DisplayCameraVideoPreviewScreenState";

  Future<void> initialiseVideoPlayer() async{
    print("Video path received ${widget.videoPath}");
    videoPlayerController = VideoPlayerController.file(File(widget.videoPath));
    await videoPlayerController.initialize();
    await videoPlayerController.setLooping(true);
    await videoPlayerController.play();

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: true
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera Video Preview"),
      ),
      body: Center(
        child: FutureBuilder(
          future: initialiseVideoPlayer(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
            print("Snapshot state ${snapshot.connectionState}");
            if(snapshot.connectionState == ConnectionState.done){
              return Chewie(
                  controller: chewieController
              );
            }
            else{
              return CircularProgressIndicator();
            }
          },
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Text("Go back"),
      ),
    );
  }

  @override
  void dispose() {
    _logger.log(TAG: _TAG, message: "Disposing video camera");
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

}
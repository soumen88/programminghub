

import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:programminghub/base/logger_utils.dart';
import 'package:video_player/video_player.dart';

class VideoPreviewScreen extends StatefulWidget{
  String videoPath;


  VideoPreviewScreen({required this.videoPath});

  @override
  State<StatefulWidget> createState() {
    return _VideoPreviewScreenState();
  }

}

class _VideoPreviewScreenState extends State<VideoPreviewScreen>{

  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  final _logger = LoggerUtils();
  final _TAG = 'VideoPreviewScreenState';

  Future<void> initialiseVideoPlayer() async{
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
      body: FutureBuilder(
        future: initialiseVideoPlayer(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          else{
            return Chewie(
                controller: chewieController
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _logger.log(TAG: _TAG, message: "Inside dispose function");
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
import 'package:chewie/chewie.dart';
import 'package:filimo_test/constants.dart';
import 'package:filimo_test/models/video_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoScreenController extends GetxController {
  final VideoDetail video = Get.arguments;
  RxDouble opacity = 0.0.obs;
  ScrollController scrollController = ScrollController();
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initializePlayer();
    scrollController.addListener(() {
      if (scrollController.offset > 460) {
        opacity.value = 1;
      } //
      else {
        opacity.value = 0;
      }
    });
  }

  @override
  onClose(){
    super.onClose();
    videoPlayerController.dispose();
    chewieController!.dispose();
  }

  Future<void> initializePlayer() async {
    videoPlayerController = VideoPlayerController.networkUrl(video.videoUrl);
    await Future.wait([videoPlayerController.initialize()]);
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: false,
      autoInitialize: true,
      allowFullScreen: false,
      materialProgressColors: ChewieProgressColors(
        backgroundColor: Colors.grey,
        bufferedColor: Colors.grey.shade200,
        playedColor: kYellowColor,
      ),
      fullScreenByDefault: true,

    );
    update();
  }
}

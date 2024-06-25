import 'package:chewie/chewie.dart';
import 'package:filimo_test/constants.dart';
import 'package:filimo_test/controllers/video_screen_controller.dart';
import 'package:filimo_test/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoScreen extends GetView<VideoScreenController> {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: controller.scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 530,
            elevation: 0,
            title: Row(
              children: [
                Obx(
                  () => AnimatedOpacity(
                    duration: const Duration(milliseconds: 400),
                    opacity: controller.opacity.value,
                    child: Text(controller.video.name),
                  ),
                ),
                const Spacer(),
                const Icon(Icons.save_alt)
              ],
            ),
            pinned: true,
            backgroundColor: kDarkGreyColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: Get.width,
                    height: 430,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Image.network(
                            controller.video.url,
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          left: 0,
                          top: 0,
                          bottom: 30,
                          child: Container(
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 20,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  controller.video.url,
                                  width: 130,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.video.name,
                                    style: const TextStyle(fontSize: 22),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    child: Text(
                                      controller.video.description,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    width: Get.width * 0.4,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 14),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.play_arrow_rounded),
                              Text(
                                'ورود و تماشا',
                                style: TextStyle(fontSize: 22),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  '96% این فیلم را دوست داشتند.',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '343 رای ثبت شده',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              splashRadius: 20,
                              icon: const Icon(
                                Icons.check_circle_outline,
                              ),
                              iconSize: 50,
                            ),
                            IconButton(
                              onPressed: () {},
                              splashRadius: 20,
                              icon: const Icon(
                                Icons.cancel_outlined,
                              ),
                              iconSize: 50,
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'داستان فیلم',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        controller.video.videoStory,
                        style: TextStyle(
                          color: Colors.grey.shade300,
                          fontSize: 16,
                          height: 1.5
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'پیش نمایش فیلم',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GetBuilder<VideoScreenController>(
                  init: VideoScreenController(),
                  builder: (videoController) {
                    if (videoController.chewieController != null &&
                        videoController
                            .videoPlayerController.value.isInitialized) {
                      return AspectRatio(
                        aspectRatio: videoController
                            .videoPlayerController.value.aspectRatio,
                        child: Chewie(
                            controller: videoController.chewieController!),
                      );
                      // return ;
                    } //
                    else {
                      return const Center(
                        child: LoadingWidget(),
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

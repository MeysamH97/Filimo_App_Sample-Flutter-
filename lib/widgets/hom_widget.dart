import 'package:filimo_test/models/video_model.dart';
import 'package:filimo_test/widgets/special_row_widget.dart';
import 'package:filimo_test/widgets/video_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'category_row.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [Container()],
          elevation: 0,
          expandedHeight: 400,
          pinned: true,
          backgroundColor: kDarkGreyColor,
          title: Row(
            children: [
              Image.asset(
                'assets/images/filimo.png',
                width: 80,
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(5),
                child: const FaIcon(
                  FontAwesomeIcons.user,
                  size: 20,
                  color: kYellowColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.search_rounded),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: (){
                  Scaffold.of(context).openEndDrawer();
                },
                child: const Icon(Icons.filter_list_rounded),
              ),
            ],
          ),
          flexibleSpace: Container(
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kDarkGreyColor,
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.center,
              ),
            ),
            child: const FlexibleSpaceBar(
              background: VideoSlider(),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const SpecialRowWidget(),
              const SizedBox(
                height: 20,
              ),
              CategoryRow(
                categoryName: 'تازه های فیلیمو',
                onMoreTapped: () {},
                listVideo: newVideo,
              ),
              const SizedBox(
                height: 20,
              ),
              CategoryRow(
                categoryName: 'تماشای رایگان',
                onMoreTapped: () {},
                listVideo: freeVideo,
              ),
              const SizedBox(
                height: 20,
              ),
              CategoryRow(
                categoryName: 'انیمیشن',
                onMoreTapped: () {},
                listVideo: sliderVideosList,
              ),
              const SizedBox(
                height: 20,
              ),
              CategoryRow(
                categoryName: '2019',
                onMoreTapped: () {},
                listVideo: sliderVideosList,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

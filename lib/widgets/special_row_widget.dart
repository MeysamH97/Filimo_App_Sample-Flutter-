import 'package:filimo_test/models/video_model.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SpecialRowWidget extends StatelessWidget {
  const SpecialRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'ویژه',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: const [
                  Text(
                    'مشاهده همه',
                    style: TextStyle(color: kYellowColor),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: kYellowColor,
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            itemCount: sliderVideosList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsetsDirectional.only(
                  start: sliderVideosList[index] == sliderVideosList.first ? 0 : 5,
                  end: sliderVideosList[index] == sliderVideosList.last ? 0 : 5,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    sliderVideosList[index].url,
                    fit: BoxFit.fitWidth,
                    width: 280,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

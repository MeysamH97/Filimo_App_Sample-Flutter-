import 'package:filimo_test/models/video_model.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    Key? key,
    required this.categoryName,
    required this.onMoreTapped,
    required this.listVideo,
  }) : super(key: key);

  final String categoryName;
  final VoidCallback onMoreTapped;
  final List<VideoDetail> listVideo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onMoreTapped,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                categoryName,
                style: const TextStyle(
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
          height: 230,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            itemCount: listVideo.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: listVideo[index] == listVideo.first ? 0 : 5,
                      left: listVideo[index] == listVideo.last ? 0 : 5,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        listVideo[index].url,
                        fit: BoxFit.cover,
                        width: 150,
                        height: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(listVideo[index].name.length > 15
                        ? '${listVideo[index].name.substring(0, 15)}...'
                        : listVideo[index].name),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

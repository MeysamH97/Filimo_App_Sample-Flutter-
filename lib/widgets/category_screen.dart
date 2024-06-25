import 'package:filimo_test/models/video_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          actions: [Container()],
          backgroundColor: const Color(0xff262626),
          elevation: 0,
          title: Row(
            children: [
              Image.asset(
                'assets/images/filimo_gold.png',
                width: 80,
              ),
              const Spacer(),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle),
                child: const FaIcon(
                  FontAwesomeIcons.userCircle,
                  color: kYellowColor,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              const Icon(Icons.search),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                for(var item in sliderVideosList)...[
                  Stack(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Image.network(
                          item.url,
                          height: 100,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Align(
                        heightFactor: 5,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                for(var item in newVideo)...[
                  Stack(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Image.network(
                          item.url,
                          height: 100,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Align(
                        heightFactor: 5,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
                for(var item in freeVideo)...[
                  Stack(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Image.network(
                          item.url,
                          height: 100,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Align(
                        heightFactor: 5,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }
}

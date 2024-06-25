import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({Key? key}) : super(key: key);

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
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Center(
              child: Text(
                'برای دسترسی به امکانات و فیلم های فیلیمو، ابتدا باید وارد بشی',
                style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

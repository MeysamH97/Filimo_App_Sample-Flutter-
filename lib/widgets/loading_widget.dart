import 'package:flutter/material.dart';

import '../constants.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: 25,
      height: 25,
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(kYellowColor),
      ),
    );
  }
}

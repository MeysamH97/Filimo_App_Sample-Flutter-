import 'package:filimo_test/widgets/loading_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Image.asset(
              'assets/images/filimo_logo.png',
              width: 50,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/filimo.png',
            width: 80,
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: LoadingWidget(),
            ),
          ),
        ],
      ),
    );
  }
}

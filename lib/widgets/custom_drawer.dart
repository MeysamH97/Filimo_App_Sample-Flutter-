import 'package:filimo_test/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kDarkGreyColor,
            kDarkGreyColor,
            const Color(0xff494949).withOpacity(0.6),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 120,
                        backgroundImage:
                            AssetImage('assets/images/filimo_logo.png'),
                        backgroundColor: Colors.transparent,
                      ),
                      Text(
                        'ساخته شده توسط میثم حسنی',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Yekan',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: TextButton(
                  onPressed: () {
                    onButtonPressed(context);
                  },
                  child: const Text(
                    'درباره نرم افزار',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Yekan',
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  onButtonPressed(context) {
    Navigator.pop(context);
    return Get.defaultDialog(
      content: const Text(
        'این اپ صرفا فقط یک نمونه کار میباشد',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          height: 1.5,
          fontSize: 20,
          fontFamily: 'Yekan',
        ),
      ),
      title: 'توجه',
      titleStyle: const TextStyle(
        color: Colors.white,
        fontFamily: 'Yekan',
      ),
      backgroundColor: kDarkGreyColor
    );
  }
}

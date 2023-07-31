import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sboxchat/app/modules/splash/pages/splash3.dart';
import 'package:sboxchat/app/modules/splash/widgets/buttonSplash.dart';

import '../../../config/images/app_images.dart';
import '../controllers/splash_controller.dart';
import '../widgets/loading.dart';

class Splash2 extends GetView<SplashController> {
  const Splash2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Loading(
              isshow: false,
            ),
            Loading(
              isshow: true,
            ),
            Loading(
              isshow: false,
            ),
          ],
        ),
        Image.asset(AppMessage.spl_1),
        Text("PAGE 1"),
        InkWell(
            onTap: () {
              Get.to(Splash3());
            },
            child: ButtonSplash()),
      ],
    ));
  }
}

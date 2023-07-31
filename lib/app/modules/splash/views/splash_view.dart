import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sboxchat/app/modules/splash/widgets/buttonSplash.dart';
import 'package:get/get.dart';
import '../../../config/images/app_images.dart';
import '../controllers/splash_controller.dart';
import '../pages/splash2.dart';
import '../widgets/loading.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Loading(
              isshow: true,
            ),
            Loading(
              isshow: false,
            ),
            Loading(
              isshow: false,
            ),
          ],
        ),
        Image.asset(AppMessage.spl_1),
        Text("PAGE 1"),
        InkWell(onTap: () => Get.to(const Splash2()), child: ButtonSplash()),
      ],
    ));
  }
}

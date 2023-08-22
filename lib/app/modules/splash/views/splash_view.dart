import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:sboxchat/app/modules/home/views/home_view.dart';

import '../../../config/constants/app_constant.dart';
import '../../../config/images/app_images.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    autoNavigation();
    super.initState();
  }

  void autoNavigation() async {
    // you can change delay here
    await Future.delayed(Duration(seconds: 1));
    Get.to(HomeView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: AppConstant.screenHeight * .4),
              width: AppConstant.screenHeight * 0.3,
              child: Image.asset(AppMessage.logo), // Corrected constant name
            ),
          ),
          const Center(
            child: SpinKitFadingCircle(
              size: 50,
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}

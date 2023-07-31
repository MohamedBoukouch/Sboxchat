import 'package:flutter/material.dart';
import 'package:sboxchat/app/config/constants/app_constant.dart';

class ButtonSplash extends StatelessWidget {
  const ButtonSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConstant.screenWidth * 0.5,
      height: AppConstant.screenHeight * 0.06,
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Center(child: Text("Next")),
    );
  }
}

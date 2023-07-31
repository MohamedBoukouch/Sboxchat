import 'package:flutter/material.dart';
import '../../../config/constants/app_constant.dart';

class Loading extends StatelessWidget {
  final bool isshow;

  const Loading({super.key, this.isshow = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: AppConstant.screenWidth * 0.3,
      height: AppConstant.screenHeight * 0.005,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: isshow ? Color.fromARGB(255, 246, 149, 4) : Colors.grey,
      ),
    );
  }
}

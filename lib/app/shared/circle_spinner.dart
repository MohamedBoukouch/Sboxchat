import "package:flutter/material.dart";

class CircleSpinner extends StatelessWidget {
  final double size;
  const CircleSpinner({super.key, this.size = 100});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: const CircularProgressIndicator(
        strokeWidth: 2,
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        valueColor: AlwaysStoppedAnimation<Color>(
          Colors.red,
        ),
      ),
    );
  }
}

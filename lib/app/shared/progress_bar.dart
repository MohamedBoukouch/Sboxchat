import "package:flutter/material.dart";
import "package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart";
import "circle_spinner.dart";

class ProgressBar extends StatelessWidget {
  final bool anAsyncCall;
  final Widget? child;
  final CircleSpinner? progressIndicator;
   const ProgressBar({
    super.key,
    this.anAsyncCall = false,
     this.child,
     this.progressIndicator,
  });

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: anAsyncCall,
      opacity: .5,
      progressIndicator: const CircleSpinner(),
      color: Colors.black,
      child: child!,
    );
  }
}

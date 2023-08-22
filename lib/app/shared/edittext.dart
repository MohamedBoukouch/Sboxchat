import "package:flutter/material.dart";

import "../config/constants/app_constant.dart";

typedef StringValidator = String? Function(String?);

class Edittext extends StatefulWidget {
  final TextEditingController? controller;
  final String? image;
  final String? hint;
  final String? text;
  final bool ispass;
  final Color colorborder;
  final StringValidator? validator;
  final bool isEmail;

  const Edittext({
    super.key,
    this.controller,
    this.image,
    this.hint,
    this.text,
    this.ispass = false,
    this.colorborder = Colors.black,
    this.validator,
    this.isEmail=false,
  });

  @override
  State<Edittext> createState() => _EdittextState();
}

class _EdittextState extends State<Edittext> {
  late bool _isObscure;

  @override
  void initState() {
    _isObscure = widget.ispass;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
                bottom: AppConstant.screenHeight * 0.015,
                left: AppConstant.screenWidth * 0.1),
            child: Text(
              widget.text!,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xcc323438),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: AppConstant.screenWidth * 0.12,
                right: AppConstant.screenWidth * 0.12),
            child: TextFormField(
              controller: widget.controller,
              validator: widget.validator,
                keyboardType:  widget.isEmail ? TextInputType.emailAddress : null,
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.red)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: widget.colorborder)),
                hintText: widget.hint,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: widget.colorborder)),
                prefixIcon: Image(image: AssetImage("${widget.image}")),
                suffixIcon: widget.ispass
                    ? IconButton(
                        color: const Color.fromRGBO(136, 136, 136, 1),
                        icon: Icon(_isObscure
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      )
                    : null,
              ),
              obscureText: _isObscure ? true : false,
            ),
          )
        ],
      ),
    );
  }
}

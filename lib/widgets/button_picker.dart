// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorPickerButtons extends StatelessWidget {
  ColorPickerButtons(
      {super.key, required this.backgroundColor, this.pickerFunction});
  Color? backgroundColor;
  Function()? pickerFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pickerFunction,
      child: CircleAvatar(
        backgroundColor: CupertinoColors.systemGrey6,
        maxRadius: 20,
        child: CircleAvatar(
          backgroundColor: backgroundColor,
          maxRadius: 15,
        ),
      ),
    );
  }
}

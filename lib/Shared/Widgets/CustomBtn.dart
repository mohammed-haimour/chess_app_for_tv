import 'package:en_passant/Shared/Variables/Variables.dart';
import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key,
        this.onPressed,
        required this.innnerText,
        this.width,
        this.height});

  final void Function()? onPressed;
  final String innnerText;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        color: Variables.colorLightBlack,
        shape: RoundedRectangleBorder(borderRadius: Variables.radiusLarge , side: BorderSide(color: Variables.colorBlack ,width: 1) ),
        onPressed: onPressed,
        child: Text(
          innnerText,
          style: Variables.fontBlackSmall
        ),
      ),
    );
  }
}
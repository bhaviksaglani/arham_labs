import 'package:flutter/material.dart';

import '../../config/app_colors/app_colors.dart';
import '../utils/const.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final VoidCallback? onPressed;
  final OutlinedBorder? shape;
  final bool isEnabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color? borderColor;
  const CustomButton(
      {super.key,
      required this.title,
      this.titleStyle,
      this.backgroundColor,
      this.disabledBackgroundColor,
      this.shape,
      this.isEnabled = true,
      this.prefixIcon,
      this.suffixIcon,
      this.onPressed,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: isEnabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: borderColor ?? Colors.transparent),
          disabledBackgroundColor: disabledBackgroundColor ?? color4166C6,
          backgroundColor: backgroundColor,
          shape: shape,
        ),
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (prefixIcon != null) prefixIcon!,
              Text(
                title,
                style: titleStyle ??
                    textStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
              ),
              if (suffixIcon != null) suffixIcon!,
            ],
          ),
        ));
  }
}

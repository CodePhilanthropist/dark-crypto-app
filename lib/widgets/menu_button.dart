import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_color.dart';

class MenuButton extends StatelessWidget {
  MenuButton({
    super.key,
    required this.iconPath,
    this.iconColor,
    required this.onPressed,
  });

  final String iconPath;
  Color? iconColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onPressed,
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: iconColor ?? bgColor,
          ),
          child: Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              iconPath,
            ),
          ),
        ),
      ),
    );
  }
}

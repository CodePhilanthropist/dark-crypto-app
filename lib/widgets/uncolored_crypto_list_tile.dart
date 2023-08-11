import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_color.dart';
import '../constants/typography.dart';
import '../screens/detail_screen.dart';

class UncoloredCryptoListTile extends StatelessWidget {
  UncoloredCryptoListTile({
    super.key,
    required this.width,
    required this.height,
    required this.icon,
    required this.name,
    required this.symbol,
    required this.price,
    required this.change,
    required this.symbolColor,
    this.isDown = false,
  });

  final double width;
  final double height;
  final String icon;
  final String name;
  final String symbol;
  final String price;
  final String change;
  final Color symbolColor;
  bool? isDown;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        // margin: const EdgeInsets.symmetric(
        //   horizontal: 24,
        // ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: symbolColor.withOpacity(0.15),
              ),
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(width: width * 0.021),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                baseFont(value: name),
                SizedBox(height: height * 0.0049),
                smallFont(
                  value: symbol,
                  color: const Color(0xFF6D7180),
                ),
              ],
            ),
            SizedBox(width: width * 0.064),
            SizedBox(
              height: height * 0.043,
              width: width * 0.224,
              child: SvgPicture.asset(
                isDown!
                    ? "assets/svg/sparkline2.svg"
                    : "assets/svg/sparkline1.svg",
                fit: BoxFit.fill,
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                baseFont(value: price),
                SizedBox(height: height * 0.0049),
                Row(
                  children: [
                    SizedBox(
                      height: 16,
                      width: 16,
                      child: Align(
                        alignment: Alignment.center,
                        child: isDown!
                            ? SvgPicture.asset("assets/svg/arrow-bottom.svg")
                            : SvgPicture.asset("assets/svg/arrow-up.svg"),
                      ),
                    ),
                    SizedBox(width: width * 0.010),
                    smallFont(
                      value: change,
                      color: isDown! ? cryptoRed : cryptoGreen,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

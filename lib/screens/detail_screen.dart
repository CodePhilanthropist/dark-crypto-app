import 'package:dark_crypto_app/constants/app_color.dart';
import 'package:dark_crypto_app/constants/typography.dart';
import 'package:dark_crypto_app/widgets/menu_button.dart';
import 'package:dark_crypto_app/widgets/uncolored_crypto_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 24,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuButton(
                    iconPath: "assets/svg/arrow left.svg",
                    iconColor: accentGrey,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/ETH.svg"),
                      const SizedBox(width: 4),
                      largeFont(value: "ETH/USDT"),
                    ],
                  ),
                  MenuButton(
                    iconPath: "assets/svg/Chart.svg",
                    iconColor: accentGrey,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: height * 0.034),
              Row(
                children: [
                  Container(
                    width: 6,
                    height: height * 0.074,
                    decoration: ShapeDecoration(
                      color: cryptoGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bigFont(value: "3,839.65"),
                      Row(
                        children: [
                          SizedBox(
                            height: 16,
                            width: 16,
                            child: Align(
                              alignment: Alignment.center,
                              child:
                                  SvgPicture.asset("assets/svg/arrow-up.svg"),
                            ),
                          ),
                          SizedBox(width: width * 0.010),
                          smallFont(
                            value: "105 (%0.8)",
                            color: cryptoGreen,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height * 0.016),
              SizedBox(
                width: width * 0.789,
                height: height * 0.323,
                // height: height * 0.029,
                // child: Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     TimeFrameButton(
                //       value: "24H",
                //       isActive: true,
                //     ),
                //     TimeFrameButton(
                //       value: "1W",
                //     ),
                //     TimeFrameButton(
                //       value: "1M",
                //     ),
                //     TimeFrameButton(
                //       value: "1Y",
                //     ),
                //     TimeFrameButton(
                //       value: "All",
                //     ),
                //   ],
                // ),
                child:
                    SvgPicture.asset("assets/svg/graph.svg", fit: BoxFit.fill),
              ),
              SizedBox(height: height * 0.04),
              SizedBox(
                height: height * 0.055,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: width * 0.36,
                          height: height * 0.055,
                          decoration: BoxDecoration(
                            color: cryptoGreen,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: largeFont(value: "Buy")),
                        ),
                      ),
                    ),
                    const SizedBox(width: 13),
                    Material(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          width: width * 0.36,
                          height: height * 0.055,
                          decoration: BoxDecoration(
                            color: cryptoRed,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(child: largeFont(value: "Sell")),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  baseFont(
                      value: "Quick watch", color: const Color(0xFF575B66)),
                  Row(
                    children: [
                      baseFont(
                          value: "View all", color: const Color(0xFF575B66)),
                      const SizedBox(width: 4),
                      SvgPicture.asset(
                        "assets/svg/arrow-right.svg",
                        color: const Color(0xFF575B66),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      UncoloredCryptoListTile(
                        width: width,
                        height: height,
                        icon: "assets/svg/Bitcoin.svg",
                        name: "Bitcoin",
                        symbol: "BTC",
                        price: "47,412.65",
                        change: "+1.6%",
                        symbolColor: bitcoinColor,
                      ),
                      SizedBox(
                        height: height * 0.0147,
                        child: const Divider(
                          color: accentGrey,
                        ),
                      ),
                      UncoloredCryptoListTile(
                        width: width,
                        height: height,
                        icon: "assets/svg/Ripple.svg",
                        name: "Ripple",
                        symbol: "XRP",
                        price: "1.1184",
                        change: "-0.86%",
                        symbolColor: rippleColor,
                      ),
                      SizedBox(
                        height: height * 0.0147,
                        child: const Divider(
                          color: accentGrey,
                        ),
                      ),
                      UncoloredCryptoListTile(
                        width: width,
                        height: height,
                        icon: "assets/svg/LTC.svg",
                        name: "Litecoin",
                        symbol: "LTC",
                        price: "169.6",
                        change: "+1.2%",
                        symbolColor: liteCoinColor,
                      ),
                      SizedBox(
                        height: height * 0.0147,
                        child: const Divider(
                          color: accentGrey,
                        ),
                      ),
                      UncoloredCryptoListTile(
                        width: width,
                        height: height,
                        icon: "assets/svg/BNB.svg",
                        name: "Binance",
                        symbol: "BNB",
                        price: "1.1184",
                        change: "-0.86%",
                        symbolColor: bnbColor,
                        isDown: true,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeFrameButton extends StatelessWidget {
  TimeFrameButton({
    super.key,
    required this.value,
    this.isActive = false,
  });

  final String value;
  bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isActive ? accentGrey : null,
        borderRadius: BorderRadius.circular(5),
      ),
      child: smallFont(value: value),
    );
  }
}

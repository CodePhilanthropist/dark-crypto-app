import 'dart:ui';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:dark_crypto_app/constants/app_color.dart';
import 'package:dark_crypto_app/constants/typography.dart';
import 'package:dark_crypto_app/models/sparkline_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/crypto_list_tile.dart';
import '../widgets/menu_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // height: height * 0.2167,
              decoration: const BoxDecoration(
                color: accentGrey,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  left: 32,
                  right: 32,
                  top: 40,
                  bottom: 28,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 42,
                          width: 42,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Container(
                              height: 41,
                              width: 41,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/profile.jpg"),
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            baseFont(value: "Welcome Back", color: textGrey),
                            SizedBox(height: height * 0.005),
                            largeFont(value: "Rian Barriga")
                          ],
                        ),
                        const Spacer(),
                        MenuButton(
                          iconPath: "assets/svg/Wallet.svg",
                          onPressed: () {},
                        ),
                        const SizedBox(width: 8),
                        MenuButton(
                          iconPath: "assets/svg/Scan.svg",
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.022),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Search...",
                        hintStyle: TextStyle(
                          fontFamily: "SF Pro Text",
                          color: const Color(0xFF565A66),
                          fontSize: height * 0.017,
                        ),
                        prefixIcon: Container(
                          width: 24,
                          height: 24,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          child: Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              "assets/svg/Search.svg",
                            ),
                          ),
                        ),
                        suffixIcon: Container(
                          margin: const EdgeInsets.only(right: 6),
                          child: MenuButton(
                            iconPath: "assets/svg/Filter.svg",
                            onPressed: () {},
                            iconColor: accentGrey,
                          ),
                        ),
                        filled: true,
                        fillColor: bgColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.029),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 30,
                            bottom: -18,
                            child: Container(
                              width: 100.30,
                              height: 89.10,
                              decoration: const BoxDecoration(
                                // color: Color(0xFF3FBF6A),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 200,
                                    spreadRadius: 2.5,
                                    color: Color(0xFF3FBF6A),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 30,
                            top: -18,
                            child: Container(
                              width: 100.30,
                              height: 89.10,
                              decoration: const BoxDecoration(
                                // color: Color(0xFF3FBF6A),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 200,
                                    spreadRadius: 2.5,
                                    color: cryptoBlue,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: SvgPicture.asset(
                                "assets/svg/bottom-left-design.svg"),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: SvgPicture.asset(
                                "assets/svg/bottom-right-design.svg"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      // height: height * 0.203,
                      width: width * 0.915,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white.withOpacity(0.20000000298023224),
                          width: 0.5,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          baseFont(value: "Portfolio value"),
                          SizedBox(height: height * 0.0098),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  headingFont(value: "\$47,412.65"),
                                  SizedBox(height: height * 0.0147),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 16,
                                        width: 16,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: SvgPicture.asset(
                                            "assets/svg/arrow-up.svg",
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width * 0.010),
                                      smallFont(
                                        value: "\$453.85(+1.6%)",
                                        color: cryptoGreen,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: SizedBox(
                                  width: width * 0.324,
                                  height: height * 0.0431,
                                  child: Sparkline(
                                    data: headerSparklineData,
                                    lineColor: cryptoGreen,
                                    fillMode: FillMode.below,
                                    fillColor: cryptoGreen.withOpacity(0.1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin:
                                EdgeInsets.symmetric(vertical: height * 0.0147),
                            child: SvgPicture.asset(
                                "assets/svg/gradient-line.svg"),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: MaterialButton(
                              onPressed: () {},
                              child: SizedBox(
                                width: width * 0.178,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    baseFont(
                                      value: "See All",
                                      color: const Color(0xFF6D7180),
                                    ),
                                    const SizedBox(width: 8),
                                    SvgPicture.asset(
                                      "assets/svg/arrow-right.svg",
                                      color: const Color(0xFF6D7180),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.023),
            Container(
              width: width,
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: largeFont(value: "Watchlist"),
            ),
            SizedBox(height: height * 0.015),
            Expanded(
              // height: height * 0.367,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const PageScrollPhysics(
                  parent: BouncingScrollPhysics(),
                ),
                child: Column(
                  children: [
                    CryptoListTile(
                      width: width,
                      height: height,
                      icon: "assets/svg/Bitcoin.svg",
                      name: "Bitcoin",
                      symbol: "BTC",
                      price: "47,412.65",
                      change: "+1.6%",
                      symbolColor: bitcoinColor,
                    ),
                    SizedBox(height: height * 0.015),
                    CryptoListTile(
                      width: width,
                      height: height,
                      icon: "assets/svg/Ripple.svg",
                      name: "Ripple",
                      symbol: "XRP",
                      price: "1.1184",
                      change: "-0.86%",
                      symbolColor: rippleColor,
                      isDown: true,
                    ),
                    SizedBox(height: height * 0.015),
                    CryptoListTile(
                      width: width,
                      height: height,
                      icon: "assets/svg/LTC.svg",
                      name: "Litecoin",
                      symbol: "LTC",
                      price: "169.6",
                      change: "+1.2%",
                      symbolColor: liteCoinColor,
                    ),
                    SizedBox(height: height * 0.015),
                    CryptoListTile(
                      width: width,
                      height: height,
                      icon: "assets/svg/Solana.svg",
                      name: "Solana",
                      symbol: "SOL",
                      price: "119.69",
                      change: "-0.6%",
                      symbolColor: solanaColor,
                      isDown: true,
                    ),
                    SizedBox(height: height * 0.015),
                    CryptoListTile(
                      width: width,
                      height: height,
                      icon: "assets/svg/BNB.svg",
                      name: "Binance",
                      symbol: "BNB",
                      price: "465.33",
                      change: "+0.45%",
                      symbolColor: bnbColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: SizedBox(
            height: height * 0.097,
            width: width,
            child: Center(
              child: SizedBox(
                // width: width * 0.048,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset("assets/svg/Home.svg"),
                      ),
                    ),
                    SizedBox(width: width * 0.146),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: const ShapeDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(-0.61, -0.79),
                          end: Alignment(0.61, 0.79),
                          colors: [Color(0xFF2F80ED), Color(0xFF219653)],
                        ),
                        shape: OvalBorder(),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          "assets/svg/plus 2.svg",
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.146),
                    MaterialButton(
                      onPressed: () {},
                      child: Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset("assets/svg/Activity.svg"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

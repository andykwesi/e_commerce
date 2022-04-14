// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/default_button.dart';
import '../../sign_in/sign_in_screen.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to HAPPY, Let's Shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people connect with stores \naround the world.",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us.",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  text: splashData[index]["text"]!,
                  image: splashData[index]["image"]!,
                ),
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Get.to(SignInScreen());
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: getProportionateScreenWidth(5)),
      height: getProportionateScreenHeight(6),
      width: currentPage == index
          ? getProportionateScreenWidth(20)
          : getProportionateScreenWidth(6),
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Colors.grey,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

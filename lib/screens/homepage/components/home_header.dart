// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_commerce/screens/homepage/components/icon_with_counter.dart';
import 'package:e_commerce/screens/homepage/components/search_field.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SearchField(),
        IconWithCounter(svgPath: "assets/icons/Cart Icon.svg", value: "6",),
        IconWithCounter(svgPath: "assets/icons/Bell.svg", value: "4",),
      ],
    );
  }
}


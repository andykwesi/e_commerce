// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/screens/homepage/components/categories.dart';
import 'package:e_commerce/screens/homepage/components/discount_banner.dart';
import 'package:e_commerce/screens/homepage/components/home_header.dart';
import 'package:e_commerce/screens/homepage/components/popular_product.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(10),),
            DiscountBanner(),
            Categories(),

            SizedBox(height: getProportionateScreenHeight(30),),
            PopularProducts()
          ],
        ),
      ),
    );
  }
}


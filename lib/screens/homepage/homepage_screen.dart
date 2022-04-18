// ignore_for_file: prefer_const_constructors, unused_import

import 'package:e_commerce/components/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}


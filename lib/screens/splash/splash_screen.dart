// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

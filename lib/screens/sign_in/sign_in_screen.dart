// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              children: [
                Text(
                  "Hi there",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Please fill in the form to create an account\n or continue with social account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(50),
                ),
                SignInForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool remember = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label: Text("First Name"),
                  hintText: "Enter your first name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(42),
                      vertical: getProportionateScreenHeight(20)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0,
                        getProportionateScreenHeight(20),
                        getProportionateScreenWidth(20),
                        getProportionateScreenHeight(20)),
                    child: Icon(Icons.person),
                  )),
            ),
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Last Name"),
                  hintText: "Enter your last name",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(42),
                      vertical: getProportionateScreenHeight(20)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0,
                        getProportionateScreenHeight(20),
                        getProportionateScreenWidth(20),
                        getProportionateScreenHeight(20)),
                    child: Icon(Icons.person),
                  )),
            ),

            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Email"),
                  hintText: "Enter your email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(42),
                      vertical: getProportionateScreenHeight(20)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0,
                        getProportionateScreenHeight(20),
                        getProportionateScreenWidth(20),
                        getProportionateScreenHeight(20)),
                    child: Icon(Icons.email),
                  )),
            ),

            SizedBox(
              height: getProportionateScreenHeight(25),
            ),

            TextFormField(
              decoration: InputDecoration(
                  label: Text("Username"),
                  hintText: "Enter your username",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(42),
                      vertical: getProportionateScreenHeight(20)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0,
                        getProportionateScreenHeight(20),
                        getProportionateScreenWidth(20),
                        getProportionateScreenHeight(20)),
                    child: Icon(Icons.person),
                  )),
            ),
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  label: Text("Password"),
                  hintText: "Enter your password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(42),
                      vertical: getProportionateScreenHeight(20)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0,
                        getProportionateScreenHeight(20),
                        getProportionateScreenWidth(20),
                        getProportionateScreenHeight(20)),
                    child: SvgPicture.asset('assets/icons/Lock.svg'),
                  )),
            ),
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            
            DefaultButton(
                text: "Sign up",
                press: () {
                  Get.to(SignInScreen());
                }),
            // SizedBox(height: getProportionateScreenHeight(150),),
            SizedBox(
              height: getProportionateScreenHeight(65),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.google,
                    color: Colors.red,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                    size: 24.0,
                  ),
                  Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.blue,
                    size: 24.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),

                  InkWell(
                  onTap: () {
                    Get.to(SignInScreen());
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

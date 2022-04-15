import 'package:e_commerce/constants.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: Container(
        width: getProportionateScreenWidth(140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.1,
              child: Container(
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                  ),
                child: Image.asset("assets/images/ps4_console_white_1.png"),
              ),
            ),
            SizedBox(height: 10,),
            Text("Wireless Controller for PS4", style: TextStyle(
              color: Colors.black,
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("GHS 20.99", style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor
                ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(50),
                  child: SvgPicture.asset("assets/icons/Heart Icon.svg", color: kPrimaryColor,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
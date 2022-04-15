import 'package:e_commerce/constants.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconWithCounter extends StatelessWidget {
  const IconWithCounter({
    Key? key, 
    required this.svgPath, 
    required this.value,
  }) : super(key: key);
  
  final String svgPath;

  final String value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {},
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: getProportionateScreenHeight(46),
            width: getProportionateScreenWidth(46),
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgPath),
          ),
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: getProportionateScreenHeight(16),
              width: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: const Color(0xFFFF4848),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1.5,
                  color: Colors.white,
                ),
              ),
              child: Center(
                child: Text(value, style: TextStyle(
                  fontSize: getProportionateScreenWidth(10),
                  height: 1,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(offset: Offset(0, -15), blurRadius: 20, color: Color(0xFFDADADA).withOpacity(0.2))
        ]
      ),
      child: SafeArea(top: false, child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset("assets/icons/Shop Icon.svg")
          ),

          IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset("assets/icons/Heart Icon.svg")
          ),

          IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg")
          ),

          IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset("assets/icons/User Icon.svg")
          ),
        ],
      ),)
    );
  }
}
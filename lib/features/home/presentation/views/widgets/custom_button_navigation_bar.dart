import 'package:flutter/material.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
                shadows: [
                  BoxShadow(
                    color: Color(0x19000000),
                    spreadRadius: 0,
                    blurRadius: 25,
                    offset: Offset(0, -2),
                  )
                ]
      ),

    );
  }
}

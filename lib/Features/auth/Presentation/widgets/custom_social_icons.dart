import 'package:flutter/material.dart';

// ignore: must_be_immutable
class customSocialIcons extends StatelessWidget {
  customSocialIcons({super.key,required this.image});
String image;
  @override
  Widget build(BuildContext context) {
    return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.all(5),
        width: 50,
        height: 50,
        clipBehavior: Clip.antiAlias,
       decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side:const BorderSide(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
        child:Image.asset(image)
        );
  }
}
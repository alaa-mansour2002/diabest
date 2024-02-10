import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListTileInHome extends StatelessWidget {
  CustomListTileInHome({super.key, 
    required this.titlehome,required this.subtitlehome,required this.leadinghome,required this.onpressed
  });
String titlehome,subtitlehome,leadinghome;
VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
         alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height*0.11,
            decoration: ShapeDecoration(
              color: AppColors.vanillalatte,
              shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
              ),
            ),
        child: ListTile(
          title: Text(titlehome, style: CustomTextStyles.lohit500style22.copyWith(fontSize: MediaQuery.of(context).devicePixelRatio*8.5),),
          subtitle: Text(subtitlehome,style:CustomTextStyles.lohit300style16 ),
          leading: Image.asset(leadinghome),
          
        ),
      ),
    );
  }
}

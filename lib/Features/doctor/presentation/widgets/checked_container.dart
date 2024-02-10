import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:flutter/material.dart';

class CheckedContainer extends StatefulWidget {
  const CheckedContainer({super.key});

  @override
  State<CheckedContainer> createState() => _CheckedContainerState();
}

class _CheckedContainerState extends State<CheckedContainer> {
  int selected=0;
  Widget customRadio(String image,String title,int index){
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
return OutlinedButton(
  onPressed: (){
   setState(() {
     selected=index;
   });
  },
  style: OutlinedButton.styleFrom(
    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
    backgroundColor: (selected==index)? Colors.blue :Colors.white,
    ), 
  child: Container(
     alignment: Alignment.center,
        margin: const EdgeInsets.all(20),
        width: width*0.24,
        height:height*0.08,
    child: Column(
      children: [
        Image.asset(image,width: width*0.09,),
        Text(title,style: TextStyle(color: (selected==index)? Colors.white :Colors.black,fontSize: 17,fontWeight: FontWeight.w400),)
      ],
    ),
  ));
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
    child:Row(
      children: [
        customRadio(Assets.imagesImageInternist, AppStrings.internist, 1),
       const SizedBox(width: 5,),
         customRadio(Assets.imagesImageCardiologist, AppStrings.cardiologist, 2),
         const SizedBox(width: 5,),
          customRadio(Assets.imagesImageDermatolo, AppStrings.dermatology, 3),
          const SizedBox(width: 5,),
           customRadio(Assets.imagesHepatologist, AppStrings.hepatologist, 4),
          const SizedBox(width: 5,),
      ],
    ));
  }
}
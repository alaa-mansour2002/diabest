
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/On-Boarding/data/models/on_bording_model.dart';
import 'package:flutter/material.dart';

import 'custom_smooth_page_indicator.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody({super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height*0.65,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              // Container(
              //   height: 320,
                
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage(
              //         onBoardingData[index].imagePath,
              //       ),
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
              Stack(
  children: <Widget>[
    Positioned(
      top: height*0.12,
      left: 0, 
      right: width*0.05,
      child: Container(
        width: width*0.002, 
        height: height*0.23, 
        decoration: BoxDecoration(
          color:AppColors.primarycolor, 
          shape: BoxShape.circle, 
        ),
      ),
    ),
    Container(
      width: width*0.70,
      height: height*0.35,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            onBoardingData[index].imagePath,
          ),
          fit: BoxFit.fill,
        ),
      ),
    ),
  ],
),

               SizedBox(height: height*0.04),
              CustomSmoothPageIndicator(controller: controller),
              SizedBox(height: height*0.05),
              Text(
                onBoardingData[index].title,
                style:Theme.of(context).textTheme.titleLarge ,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
               SizedBox(height: height*0.03),
              Text(
                onBoardingData[index].subTitle,
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
             
               
              
            ],
          );
        },
      ),
    );
  }
}
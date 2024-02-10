
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/On-Boarding/Functions/on_boarding.dart';
import 'package:diabestapp/Features/On-Boarding/data/models/on_bording_model.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;
  
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomBtn(
            text: AppStrings.createAccount,
            onPressed: () {
              onBoardingVisited();
              customReplacementNavigate(context, "/signUp");
            },
          ),
          SizedBox(height:height*0.02 ),
          GestureDetector(
            onTap: () {
              onBoardingVisited();
              customReplacementNavigate(context, "/signIn");
            },
            child: Text(
              AppStrings.loginNow,
              style: Theme.of(context).textTheme.titleSmall
              
            ),
          ),
        ],
      );
    } else {
      return CustomBtn(
        text: AppStrings.next,
        onPressed: () {
          controller.nextPage(
            duration: const Duration(microseconds: 200),
            curve: Curves.bounceIn,
          );
        },
      );
    }
  }
}
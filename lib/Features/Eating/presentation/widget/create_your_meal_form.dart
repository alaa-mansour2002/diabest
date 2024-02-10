import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_btn_profile.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:flutter/material.dart';

class CreateYourMealForm extends StatelessWidget {
  const CreateYourMealForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.howtoEatHealthyandAvoidFadDiets,
              height: MediaQuery.of(context).size.height*0.53,
              width:MediaQuery.of(context).size.width*1.1,
            ),
           const SizedBox(height: 20),
            CustomBtnProfile(text: AppStrings.createyourmealplan,onPressed: () {
              customNavigate(context, "/MealSection");
            },)
          ],
    );
  }
}
import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/Home/presentatio/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class CustomHome extends StatelessWidget {
  const CustomHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              Assets.imagesLogo2,
              width: MediaQuery.of(context).size.width * 0.40,
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    AppStrings.diabest,
                    style: CustomTextStyles.lohit700style32
                        .copyWith(color: AppColors.black1),
                  ),
                  Text(
                    AppStrings.enjayyourlifewithdiabest,
                    maxLines: 1,
                    style: CustomTextStyles.lohit300style16.copyWith(
                      color: AppColors.red,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        CustomListTileInHome(
            titlehome: AppStrings.organs,
            subtitlehome: AppStrings.neew,
            leadinghome: Assets.imagesorgans,
            onpressed: () {
              customNavigate(context, "/organsView");
            },),
        CustomListTileInHome(
            titlehome: AppStrings.reminderMedicins,
            subtitlehome: AppStrings.neew,
            leadinghome: Assets.imagesImagePill,
            onpressed: () {
              
            },),
        CustomListTileInHome(
            titlehome: AppStrings.eating,
            subtitlehome: AppStrings.neew,
            leadinghome: Assets.imagesImageMeal,
            onpressed: () {
              customNavigate(context, "/eatingview");
            },),
        CustomListTileInHome(
            titlehome: AppStrings.sprts,
            subtitlehome: AppStrings.neew,
            leadinghome: Assets.imagesImageSports,
            onpressed: () {
              customNavigate(context, "/WorkoutPlanScreen");
            },),
        CustomListTileInHome(
            titlehome: AppStrings.pregnancy,
            subtitlehome: AppStrings.neew,
            leadinghome: Assets.imagespregnancy,
            onpressed: () {
              
            },)
      ],
    );
  }
}

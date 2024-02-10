import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:flutter/material.dart';

class CustomProfileForm extends StatelessWidget {
  const CustomProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Text("Weight: 85",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),)),
              
              Expanded(child: Text("Height: 185",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),))
            ],
          ),
         const SizedBox(height: 15,),
          Row(
            children: [
              Expanded(child: Text("Gender: Male",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),)),
              
              Expanded(child: Text("Status: Single",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),)),
           const SizedBox(height: 15,),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15,),
                  Text("Age: 22",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
                  const SizedBox(height: 15,),
                  Text("Blood Suger Level: Type1",style: CustomTextStyles.lohit400style20.copyWith(color: AppColors.black1),),
                ],
              )
            ],
          ),

        ],
      ),
    );
  }
}
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Features/profile/Presentation/widget/custom_edit_profile.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text(AppStrings.editprofile,style: CustomTextStyles.lohit500style22,),
      elevation: 0,),
      body: SafeArea(
        child: Padding(
                padding:const EdgeInsets.symmetric(horizontal: 7.0),
          child: Column(
            children: [
              CustomEditProfile()
            ],
          ),
        ),
      ),
    );
  }
}
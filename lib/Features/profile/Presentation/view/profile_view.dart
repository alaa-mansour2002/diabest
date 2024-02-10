import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Widgets/custom_btn_profile.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/profile/Presentation/widget/custom_profile_form.dart';
import 'package:diabestapp/Features/profile/Presentation/widget/image_picker.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: const ImagePickervView()),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: const Text(AppStrings.eslamgalal,
                    style: CustomTextStyles.lohit500style22),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: const CustomProfileForm()),
              CustomBtnProfile(
                text: AppStrings.editprofile,
                onPressed: () {
                  customNavigate(context, "/editprofile");
                },
              ),
              const Expanded(child: Text("")),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomForgetPasswordForm extends StatelessWidget {
  const CustomForgetPasswordForm({Key? key, required this.emailAddress, required this.onPressed})
      : super(key: key);
  final TextEditingController emailAddress;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: height * 0.01),
        Expanded(
          child: Text(
            'Reset your password with email',
            textAlign: TextAlign.center,
            style: CustomTextStyles.lohit500style18,
          ),
        ),
        SizedBox(height: height * 0.01),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.imagesImageNewpassword2,
              height: height * 0.33,
              width: width * 0.75,
            ),
            SizedBox(height: height * 0.03),
            CustomTextFormField(
                mycontroller: emailAddress, labelText: AppStrings.emailAddress),
          ],
        ),
        SizedBox(height: height * 0.02),
        const Spacer(
          flex: 4,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CustomBtn(
              text: 'Continue',
              onPressed:onPressed,
            ),
          ),
        ),
        SizedBox(height: height * 0.02),
      ],
    );
  }
}

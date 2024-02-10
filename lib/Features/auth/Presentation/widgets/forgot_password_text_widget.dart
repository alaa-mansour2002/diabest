
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:flutter/material.dart';

class ForgotPasswordTextWidget extends StatelessWidget {
  const ForgotPasswordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customNavigate(context, "/forgotPassword");
      },
      child: Align(
        alignment: Alignment.center,
        child: Text(
          AppStrings.forgotPassword,
          style: CustomTextStyles.lohit500style14.copyWith(color: AppColors.deebGrey),
        ),
      ),
    );
  }
}
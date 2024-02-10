import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/custom_check_box.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/custom_social_icons.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/forgot_password_text_widget.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/have_an_account_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm(
      {super.key,
      required this.emailAddress,
      required this.password,

      this.onPressedSignIn});

  final TextEditingController emailAddress;

  final TextEditingController password;
  final VoidCallback? onPressedSignIn;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.asset(
          Assets.imagesLogo,
          height: height * 0.4,
        ),
        const Text(
          AppStrings.logintoyouraccount,
          style: CustomTextStyles.lohit500style24,
        ),
        SizedBox(
          height: height * 0.02,
        ),
        CustomTextFormField(
          mycontroller: emailAddress,
          labelText: AppStrings.emailAddress,
          prefixIcon: const Icon(Icons.email),
          onChanged: (value) {
            emailAddress.text = value;
          },
        ),
        CustomTextFormField(
          mycontroller: password,
          labelText: AppStrings.password,
          prefixIcon: const Icon(Icons.lock),
          onChanged: (value) {
            password.text = value;
          },
        ),
        const CustomCheckBox(),
        SizedBox(
          height: height * 0.01,
        ),
        CustomBtn(
          text: AppStrings.signIn,
          onPressed: onPressedSignIn,
        ),
        SizedBox(
          height: height * 0.01,
        ),
        const ForgotPasswordTextWidget(),
        SizedBox(
          height: height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customSocialIcons(image: Assets.imagesImageFacebook),
            customSocialIcons(image: Assets.imagesImageGoogle),
            customSocialIcons(image: Assets.imagesImageApple),
          ],
        ),
        SizedBox(
          height: height * 0.01,
        ),
        HaveAnAccountWidget(
          text1: AppStrings.donthaveanaccount,
          text2: AppStrings.signUp,
          onTap: () {
            customNavigate(context, "/signUp");
          },
        )
      ],
    );
  }
}

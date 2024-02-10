import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/signup_radio.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm(
      {super.key,
      required this.onPressedSignUp,
      required this.fullName,
      required this.nationalID,
      required this.emailAddress,
      required this.password,
      required this.confirmThePassword,
      required this.optionGroup,
      required this.onChangedRadio});

  final TextEditingController fullName;

  final TextEditingController nationalID;

  final TextEditingController emailAddress;

  final TextEditingController password;

  final TextEditingController confirmThePassword;

  final VoidCallback onPressedSignUp;
  final String optionGroup;
  final ValueChanged<String?> onChangedRadio;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Column(children: [
      CustomTextFormField(
        mycontroller: fullName,
        labelText: AppStrings.fullname,
        onChanged: (value) {
          fullName.text = value;
        },
      ),
      CustomTextFormField(
        mycontroller: nationalID,
        labelText: AppStrings.nationalID,
        onChanged: (value) {
          nationalID.text = value;
        },
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
          }),
      CustomTextFormField(
          mycontroller: confirmThePassword,
          labelText: AppStrings.confirmThePassword,
          prefixIcon: const Icon(Icons.lock),
          onChanged: (value) {
            confirmThePassword.text = value;
          }),
      SizedBox(height: height * 0.01),
      SignUpRadio(
        onChangedRadio: onChangedRadio,
        onPressed: onPressedSignUp,
        optionGroup: optionGroup,
      ),
    ]);
  }
}

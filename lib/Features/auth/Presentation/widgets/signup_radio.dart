import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/classes/crud.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:flutter/material.dart';

class SignUpRadio extends StatefulWidget {
  const SignUpRadio({
    super.key,
    required this.onPressed,
    required this.onChangedRadio,
    required this.optionGroup,
  });

  @override
  State<SignUpRadio> createState() => _SignUpRadioState();
  final VoidCallback onPressed;
  final ValueChanged<String?> onChangedRadio;
  final String optionGroup;
}

class _SignUpRadioState extends State<SignUpRadio> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio<String>(
                value: AppStrings.patient,
                groupValue: widget.optionGroup,
                onChanged: widget.onChangedRadio),
            InkWell(
              onTap: () {
                customNavigate(context, '/registerYourInformation');
              },
              child: Text(
                AppStrings.patient,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            SizedBox(
              width: width * 0.1,
            ),
            Radio<String>(
                value: AppStrings.doctor,
                groupValue: widget.optionGroup,
                onChanged: widget.onChangedRadio),
            InkWell(
              onTap: () {
                customNavigate(context, '/doctor');
              },
              child: Text(
                AppStrings.doctor,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            )
          ],
        ),
        SizedBox(height: height * 0.01),
        CustomBtn(
          text: AppStrings.signUp,
          onPressed: widget.onPressed,
        )
      ],
    );
  }
}

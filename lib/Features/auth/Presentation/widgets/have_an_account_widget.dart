import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget(
      {super.key, required this.text1, required this.text2, this.onTap});
  final String text1, text2;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        child: Text.rich(TextSpan(children: [
          TextSpan(text: text1, style: CustomTextStyles.lohit300style16.copyWith(fontWeight: FontWeight.w400)),
          TextSpan(
            text: text2,
            style: CustomTextStyles.lohit300style16
                .copyWith(color: AppColors.primarycolor,fontWeight: FontWeight.w400),
          ),
        ])),
      ),
    );
  }
}
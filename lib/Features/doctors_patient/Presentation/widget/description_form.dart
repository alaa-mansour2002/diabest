import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/custom_social_icons.dart';
import 'package:flutter/material.dart';

class DescriptionsForm extends StatelessWidget {
  const DescriptionsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.44,
          height: MediaQuery.of(context).size.height * 0.21,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.grey,
              width: 2.0,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              Assets.imagesImageOnBoarding1,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              "Name :",
              style: CustomTextStyles.lohit500style24,
            ),
            const SizedBox(width: 20,),
            Text(
              AppStrings.eslamgalal,
              style: CustomTextStyles.lohit400style18,
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              "Specialization :",
              style: CustomTextStyles.lohit500style24,
            ),
            const SizedBox(width: 20,),
            Text(
              AppStrings.internist,
              style: CustomTextStyles.lohit400style18,
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              "Phone Number :",
              style: CustomTextStyles.lohit500style24,
            ),
            const SizedBox(width: 20,),
            Text(
              "01211901201",
              style: CustomTextStyles.lohit400style18,
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              "Clinic Address :",
              style: CustomTextStyles.lohit500style24,
            ),
            const SizedBox(width: 20,),
            Text(
             " 23 Talat harb/Cairo",
              style: CustomTextStyles.lohit400style18,
            )
          ],
        ),const SizedBox(
          height: 30,
        ),
      const  Text(AppStrings.contactnow,style: CustomTextStyles.lohit500style24,),
        const SizedBox(
          height: 10,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            customSocialIcons(image: Assets.imagesImageFacebook),
            const SizedBox(width: 10,),
           customSocialIcons(image: Assets.imageswhatsapp),
          ],
        ),
      ],
    );
  }
}

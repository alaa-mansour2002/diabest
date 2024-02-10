import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Widgets/custom_btn_profile.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/profile/Presentation/widget/image_picker.dart';
import 'package:flutter/material.dart';

class ProfileDoctorForm extends StatelessWidget {
  const ProfileDoctorForm({super.key});

  @override
  Widget build(BuildContext context) {
        final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return  Column(
      children: [
       SizedBox(
                  height: height * 0.3,
                  child: const ImagePickervView()),
        Row(
          children: [
           Text(
              "Name :",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
             SizedBox(width: width*0.03,),
            Text(
              AppStrings.eslamgalal,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        SizedBox(
          height: height*0.02,
        ),
        Row(
          children: [
            Text(
              "Specialization :",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
             SizedBox(width: width*0.03,),
            Text(
              AppStrings.internist,
              style:Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
        SizedBox(
          height: height*0.02,
        ),
        Row(
          children: [
           Text(
              "Phone Number :",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
             SizedBox(width: width*0.03,),
            Text(
              "01211901201",
              style:Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
         SizedBox(
          height:height*0.02,
        ),
        Row(
          children: [
            Text(
              "Clinic Address :",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(width: width*0.03,),
            Text(
             " 23 Talat harb/Cairo",
              style: Theme.of(context).textTheme.bodySmall,
           maxLines: 1,
            )
          ],
        ), SizedBox(
          height: height*0.02,
        ),
       Row(
          children: [
           Text(
              "Link Of Whatsapp :",
              style: Theme.of(context).textTheme.bodyMedium,
            
            ),
             SizedBox(width:width*0.03,),
            Expanded(
              child: Text(
               " https://wa.me/qr/EBCZEGJL4HJFG1",
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 1,
              ),
            )
          ],
        ), SizedBox(
          height: height*0.02,
        ),
         Row(
          children: [
           Text(
              "Link Of Facebook :",
              style:Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(width: width*0.03,),
            Expanded(
              child: Text(
               " https://www.facebook.com/eslam.galal.1426?mibextid=ZbWKwL",
                style: Theme.of(context).textTheme.bodySmall,
                 maxLines: 1,
              ),
            )
          ],
        ),
         SizedBox(height:height*0.09,),
        CustomBtnProfile(text: AppStrings.editprofile,onPressed: () {
          customNavigate(context, "/EditProfileDoctor");
        },)
      ],
    );
  }
}


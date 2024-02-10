import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Widgets/custom_info_for_patient.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Features/profile/Functions/edit_profile.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomEditProfile extends StatelessWidget {
   CustomEditProfile({super.key});
TextEditingController name = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(AppStrings.name,style: CustomTextStyles.lohit500style22,),
        CustomTextFormField(
          mycontroller: name,
          labelText: AppStrings.name),
       const CustomInfoForPatient(),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF246BFE),
                  minimumSize:const Size(0, 50),
                  padding:const EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side:const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
                child: const Text(
                  'Save Profile',
                  style: TextStyle(fontSize: 18.0,color: Colors.white),
                ),
              ),
            ),
            const SizedBox(width: 50,),
            TextButton(
              onPressed: () {
                showChangePasswordDialog(context);
              },
              child:const Text(AppStrings.changepassword,style: TextStyle(fontSize: 16),),
            ),
          ],
        )
      ],
    );
  }
}

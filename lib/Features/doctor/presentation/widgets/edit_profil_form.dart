import 'package:diabestapp/Features/profile/Presentation/widget/image_picker.dart';
import 'package:flutter/material.dart';

class EditProfileDoctorForm extends StatelessWidget {
  const EditProfileDoctorForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: const ImagePickervView()),
      ],
    );
  }
}
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Features/doctors_patient/Presentation/widget/description_form.dart';
import 'package:flutter/material.dart';

class DescriptionsOfDoctor extends StatelessWidget {
  const DescriptionsOfDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:           Text(AppStrings.doctor,style: CustomTextStyles.lohit500style24,),
elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: ListView(children:const [
             SizedBox(height: 20,),
          DescriptionsForm(),
          ]),
        ),
      ),
    );
  }
}
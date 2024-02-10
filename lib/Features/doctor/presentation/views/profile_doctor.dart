import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/profile_doctor_form.dart';
import 'package:flutter/material.dart';

class ProfileDoctorView extends StatelessWidget {
  const ProfileDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
        final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.doctor,
          style:Theme.of(context).textTheme.titleMedium,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(children:  [
            SizedBox(
              height: height*0.02,
            ),
          const  ProfileDoctorForm(),
          ]),
        ),
      ),
    );
  }
}

import 'package:diabestapp/Features/doctors_patient/Presentation/widget/custom_patient-doctor_form.dart';
import 'package:flutter/material.dart';

class DoctorPatientView extends StatelessWidget {
  const DoctorPatientView({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
     
      body: SafeArea(
        child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: CustomScrollView(
                  physics:  BouncingScrollPhysics(),
                  slivers: [
                     SliverToBoxAdapter(
                        child: SizedBox(height: 20,)
                        ),
                         SliverToBoxAdapter(
                        child: CustomPatientDoctorForm()
                        ),
                        
                        ],)),
      )

    );
  }
}
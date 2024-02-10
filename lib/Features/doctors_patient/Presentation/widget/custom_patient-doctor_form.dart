import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Features/doctors_patient/Presentation/widget/card_doctor_patient.dart';
import 'package:flutter/material.dart';

class CustomPatientDoctorForm extends StatelessWidget {
  const CustomPatientDoctorForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Assets.imagesImageDoctor),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  AppStrings.doctor,
                  style:CustomTextStyles.lohit500style22
                ),
              ),
            ],
          ),
          CardPatientDoctor(doctorName: AppStrings.eslamgalal, doctorImage: Assets.imagesImageInternist, specialtyName: AppStrings.internist),
          CardPatientDoctor(doctorName: "Marwan Amer", doctorImage: Assets.imagesImageCardiologist, specialtyName:AppStrings.cardiologist ),
          CardPatientDoctor(doctorName: "Romisaa Elsayed", doctorImage: Assets.imagesImageDermatolo, specialtyName: AppStrings.dermatology),
          CardPatientDoctor(doctorName: "Mohamrd Abdelaziz", doctorImage:Assets.imagesHepatologist , specialtyName: AppStrings.hepatologist),
                    CardPatientDoctor(doctorName: AppStrings.eslamgalal, doctorImage: Assets.imagesImageInternist, specialtyName: AppStrings.internist),
          CardPatientDoctor(doctorName: "Marwan Amer", doctorImage: Assets.imagesImageCardiologist, specialtyName:AppStrings.cardiologist ),
          CardPatientDoctor(doctorName: "Mohamrd Abdelaziz", doctorImage:Assets.imagesHepatologist , specialtyName: AppStrings.hepatologist),

          ]);
  }
}
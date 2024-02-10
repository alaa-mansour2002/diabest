import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:flutter/material.dart';

class CardPatientDoctor extends StatelessWidget {
  final String doctorName;
  final String doctorImage;
  final String specialtyName;

  CardPatientDoctor({
    Key? key,
    required this.doctorName,
    required this.doctorImage,
    required this.specialtyName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customNavigate(context, "/DescriptionsOfDoctor");
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.13,
        margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: AppColors.lightGrey),
        ),
        child:Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Container(
      width: MediaQuery.of(context).size.width*0.60,
      child: Text(
        doctorName,
        style: CustomTextStyles.lohit500style22,
      ),
    ),
    Column(
      children: [
        Image.asset(
          doctorImage,
          width: 65,
          height: 65,
        ),
        Text(
          specialtyName,
          style: CustomTextStyles.lohit500style18,
        ),
      ],
    ),
  ],
),

      ),
    );
  }
}

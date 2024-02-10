import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/custom_date.dart';
import 'package:flutter/material.dart';

class CustomInfoForPatient extends StatefulWidget {
  const CustomInfoForPatient({super.key});

  @override
  State<CustomInfoForPatient> createState() => _CustomInfoForPatientState();
}

class _CustomInfoForPatientState extends State<CustomInfoForPatient> {
  String maritalStatus = 'Single';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8.0),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Text(
                    AppStrings.weight,
                    style: CustomTextStyles.lohit500style20),
                  buildProfileField(
                    label: '',
                    hint: AppStrings.enteryour,
                    prefixIcon: Icons.fitness_center,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const  Text(
                    AppStrings.height,
                    style: CustomTextStyles.lohit500style20,
                        
                  ),
                  buildProfileField(
                    label: '',
                    hint: AppStrings.enteryour,
                    prefixIcon: Icons.height,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
             const     Text(
                    AppStrings.date,
                    style: CustomTextStyles.lohit500style20
                  
                  ),
                
                ],
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const  Text(
                      AppStrings.maritalStatus,
                      style:CustomTextStyles.lohit500style20,
                          
                    ),
                    DropdownButton<String>(
                      value: maritalStatus,
                      onChanged: (String? newValue) {
                        setState(() {
                          maritalStatus = newValue!;
                        });
                      },
                      items: <String>[
                        AppStrings.single,
                        AppStrings.married,
                        AppStrings.divorced,
                        AppStrings.widowed
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildProfileField({
    required String label,
    required String hint,
    IconData? prefixIcon,
    bool obscureText = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                if (prefixIcon != null) Icon(prefixIcon),
                const SizedBox(width: 16.0),
                Expanded(
                  child: TextFormField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      labelText: label,
                      hintText: hint,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

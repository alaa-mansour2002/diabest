import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:flutter/material.dart';

class CustomHeightWeight extends StatelessWidget {
  const CustomHeightWeight(
      {super.key,
      required this.weightController,
      required this.heightController});

  final TextEditingController weightController;
  final TextEditingController heightController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(AppStrings.weight,
                  style: CustomTextStyles.lohit500style20),
              buildProfileField(
                controller: weightController,
                label: '',
                hint: AppStrings.enteryour,
                prefixIcon: Icons.fitness_center,
              ),
            ],
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppStrings.height,
                style: CustomTextStyles.lohit500style20,
              ),
              buildProfileField(
                controller: heightController,
                label: '',
                hint: AppStrings.enteryour,
                prefixIcon: Icons.height,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildProfileField({
    required String label,
    required String hint,
    IconData? prefixIcon,
    required TextEditingController controller,
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
                    controller: controller,
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

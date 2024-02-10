import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:flutter/material.dart';

TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void showChangePasswordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:const Text(AppStrings.changepassword),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              buildPasswordField(
                label: AppStrings.currentpassword,
                controller: currentPasswordController,
              ),
              buildPasswordField(
                label: AppStrings.newpassword,
                controller: newPasswordController,
              ),
              buildPasswordField(
                label: AppStrings.confirmThePassword,
                controller: confirmPasswordController,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              
              onPressed: () {
                // Handle change password logic
                Navigator.pop(context); // Close the dialog
              },
              child:const Text(AppStrings.changepassword,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child:const Text(AppStrings.cancel,style: TextStyle(fontSize: 16),),
            ),
          ],
        );
      },
    );
  }

  Widget buildPasswordField({
    required String label,
    required TextEditingController controller,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: true,
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
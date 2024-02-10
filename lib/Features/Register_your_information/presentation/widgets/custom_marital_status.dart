import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:flutter/material.dart';

class CustomMaritalState extends StatefulWidget {
  CustomMaritalState({super.key, required this.maritalStatus });

  String maritalStatus;

  @override
  State<CustomMaritalState> createState() => _CustomMaritalStateState();
}

class _CustomMaritalStateState extends State<CustomMaritalState> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppStrings.maritalStatus,
            style: CustomTextStyles.lohit500style20,
          ),
          DropdownButton<String>(
            value: widget.maritalStatus,
            onChanged: (String? newValue) {
              setState(() {
                widget.maritalStatus = newValue!;
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
                child:
                    Text(value, style: Theme.of(context).textTheme.bodySmall),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

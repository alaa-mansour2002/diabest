import 'package:flutter/material.dart';



class CheckBoxExample extends StatefulWidget {
  @override
  _CheckBoxExampleState createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Example'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text('Enable additional fields'),
            ],
          ),
          if (isChecked)
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Field 1',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Field 2',
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
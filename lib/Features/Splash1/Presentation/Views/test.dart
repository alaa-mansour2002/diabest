// import 'package:flutter/material.dart';

// class DateButton extends StatefulWidget {
//   @override
//   _DateButtonState createState() => _DateButtonState();
// }
// class _DateButtonState extends State<DateButton> {
//   late DateTime _selectedDate = DateTime.now();

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime picked = (await showDatePicker(
//       context: context,
//       initialDate: _selectedDate,
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2030),
//     ))!;
//     if (picked != null && picked != _selectedDate) {
//       setState(() {
//         _selectedDate = picked;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('زر تسجيل التاريخ'),
//       ),
//       body: Center(
//         child:Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               width: 200,
//               height: 50,
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.blue),
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: ElevatedButton(
//                 onPressed: () => _selectDate(context),
//                 child: Text(' ${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}'),
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.white,
//                   onPrimary: Colors.blue,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: CustomTextStyles.lohit600style28,
      ),
    );
  }
}

// Stack(
//       children: [
//         Container(
//           height: 200,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Colors.blue,
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(100.0),
//               bottomRight: Radius.circular(100.0),
              
//             ),
//           ),
//         ),
//         Positioned(
//           top: 100,
//           left: 0,
//           right: 0,
//           child: Container(
//             height: 100,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.blue,
//             ),
//             child: Center(
//               child: Text(
//                 text,
//                 style: CustomTextStyles.lohit600style28.copyWith(color: AppColors.white),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

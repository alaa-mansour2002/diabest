import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Features/my_watch/presentation/widgets/chart_rate.dart';
import 'package:flutter/material.dart';

class CustomHearttRate extends StatelessWidget {
  const CustomHearttRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LineChartPage(seriesList: [],)), // استبدل LineChartPage() بالصفحة التي تحتوي على الرسم البياني
                );
              },
              child: Text('Open Chart Page'),
            ),     const   SizedBox(height: 10,),
            const    Text("Heat-Reat",style: CustomTextStyles.lohit500style22,),
                Row(
                  children: [
               const     Text("Heart Beats :",style: CustomTextStyles.lohit500style20,),
                              Text(' 80/120',style: CustomTextStyles.lohit400style18,)

                  ],
                ),

      ],
    );
  }
  
}

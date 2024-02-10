import 'package:diabestapp/Features/my_watch/presentation/widgets/custom_heart_rate.dart';
import 'package:diabestapp/Features/my_watch/presentation/widgets/custom_my_watch_form.dart';
import 'package:flutter/material.dart';

class MyWatchView extends StatelessWidget {
  const MyWatchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.0),
              child: CustomScrollView(
                  physics:  BouncingScrollPhysics(),
                  slivers: [
                     SliverToBoxAdapter(
                        child:CustomMyWatchForm()
                    ),
                    SliverToBoxAdapter(
                        child: Divider(height: 1,thickness: 2,endIndent: 10,indent: 10,),
                    ),
                    SliverToBoxAdapter(
                        child:CustomHearttRate()
                    ),
                    
                    ])),
      )
    );
  }
}
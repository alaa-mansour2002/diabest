
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/On-Boarding/Functions/on_boarding.dart';
import 'package:diabestapp/Features/On-Boarding/presentation/views/widgets/custom_nav_bar.dart';
import 'package:diabestapp/Features/On-Boarding/presentation/views/widgets/get_buttons.dart';
import 'package:diabestapp/Features/On-Boarding/presentation/views/widgets/on_boarding_widget_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
           decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffa1c4fd), Color(0xffc2e9fb)],
        ),
      ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                 SizedBox(height: height*0.04),
                CustomNavBar(
                  onTap: () {
                    onBoardingVisited();
                    customReplacementNavigate(context, "/signIn");
                  },
                ),
                OnBoardingWidgetBody(
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  controller: _controller,
                ),
                
                 SizedBox(height:height*0.10 ),
                GetButtons(currentIndex: currentIndex, controller: _controller),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
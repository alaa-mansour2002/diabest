

import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: controller,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: AppColors.primarycolor,
          dotHeight: 7,
          dotWidth: 10,
        ),
      ),
    );
  }
}
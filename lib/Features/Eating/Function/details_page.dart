import 'package:diabestapp/Features/Eating/presentation/view/details_page.dart';
import 'package:flutter/material.dart';

void _openDetailsPage(BuildContext context, String title) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPageView(title: title),
      ),
    );
  }
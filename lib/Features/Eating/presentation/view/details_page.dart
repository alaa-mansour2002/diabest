import 'package:flutter/material.dart';

class DetailsPageView extends StatelessWidget {
 const  DetailsPageView({required this.title});
 final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Details for $title'),
      ),
    );
  }
}
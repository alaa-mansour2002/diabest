import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Features/organs/presentation/widget/teeth_form.dart';
import 'package:flutter/material.dart';

class TeethView extends StatelessWidget {
  const TeethView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
title:const Text("Check Up",style: CustomTextStyles.lohit500style22,),
elevation: 0,
      ),
      body:const SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            physics:  BouncingScrollPhysics(),
            slivers: [
               SliverToBoxAdapter(child:TeethForm()),
          ])),
      )
    );
  }
}
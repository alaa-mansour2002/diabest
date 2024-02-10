import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/custom_form_info_page2.dart';
import 'package:flutter/material.dart';

class RegisterYourInformationPage2 extends StatelessWidget {
  const RegisterYourInformationPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(AppStrings.registerYourInformation,style: CustomTextStyles.lohit500style24,),
        elevation: 0,
        backgroundColor: AppColors.offwhite,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
           const  SliverToBoxAdapter(child:CustomFormInfoPage2()),
           const  SliverToBoxAdapter(child:SizedBox(height: 7,)),
             SliverToBoxAdapter(child:CustomBtn(text: AppStrings.next,onPressed: () {
               customNavigate(context, "/registerYourInformationpage3");
             },)),
             
             ])));
  }
}
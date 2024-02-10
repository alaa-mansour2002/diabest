
import 'package:diabestapp/Core/Database/cache/cache_helper.dart';
import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Core/services/service_locator.dart';
import 'package:flutter/material.dart';


class Splash1View extends StatefulWidget {
  const Splash1View({super.key});

  @override
  State<Splash1View> createState() => _Splash1ViewState();
}

class _Splash1ViewState extends State<Splash1View> {
  void initState() {
    bool isOnBoardingVisisted =
      getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
    if (isOnBoardingVisisted == true) {
    delayedNavigate(context, "/signIn");
          
    } else {
      delayedNavigate(context, "/onBoarding");
    }
    super.initState();
  }
  

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xffa1c4fd), Color(0xffc2e9fb)],
          )),
        child: Center(
          child:Image.asset(Assets.imagesLogo) ,
        ),
      ),
    );
  }
}
void delayedNavigate(context,path) {
      Future.delayed(const Duration(seconds: 2),(){
      customReplacementNavigate(context,'/Splash2');
    });
  }
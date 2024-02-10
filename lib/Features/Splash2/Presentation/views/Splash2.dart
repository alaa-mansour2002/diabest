
import 'package:diabestapp/Core/Database/cache/cache_helper.dart';
import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Core/services/service_locator.dart';
import 'package:flutter/material.dart';

class Splash2View extends StatefulWidget {
  const Splash2View({super.key});

  @override
  State<Splash2View> createState() => _Splash2ViewState();
}

class _Splash2ViewState extends State<Splash2View> {

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
      body: 
      // Container(
      //    decoration: const BoxDecoration(
      //       image: DecorationImage(
      //     image: AssetImage(
      //       "Assets/Images/text.jpeg"
      //     ),
      //     fit: BoxFit.cover,
      //   )) ,
      //   child: Center(
      //     child: Column(
      //       children: [
      //         Text('Enjoy Your Life With DiaBest👋')
      //       ],
      //     ),
      //   ),
      // ),
// Container(
//         decoration: const BoxDecoration(
//               gradient: LinearGradient(
//             colors: [Color(0xffa1c4fd), Color(0xffc2e9fb)],
//           )),
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
            
//             children: [
//             Text("Enjoy Your Life With     \n            DiaBest👋",style: CustomTextStyles.lohit700style32.copyWith(fontWeight: FontWeight.w600),) ,
//             SizedBox(height: 10,),
//             Text('The best comfortable assistant of all time',style: CustomTextStyles.lohit500style22,)
//           ]),
//         ),
//       ),
    Container(
        decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Color(0xffa1c4fd), Color(0xffc2e9fb)],
          )),
        child: Center(
          child:Image.asset(Assets.imagesLogo) ,
        ),
      ));
  }
}
void delayedNavigate(context, path) {
      Future.delayed(const Duration(seconds: 4),(){
      customReplacementNavigate(context,path);
    });
  }
import "package:diabestapp/Core/Database/cache/cache_helper.dart";
import "package:diabestapp/Core/Routers/App-Routers.dart";
import "package:diabestapp/Core/Utils/Api_links.dart";
import "package:diabestapp/Core/Utils/App-colors.dart";
import "package:diabestapp/Core/classes/crud.dart";
import "package:diabestapp/Core/services/service_locator.dart";
import "package:flutter/material.dart";
import "package:http/http.dart" as http;
import "package:dio/dio.dart";


void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    final double fontSize = MediaQuery.of(context).devicePixelRatio;
    return MaterialApp.router(
      theme: ThemeData(
          textTheme: TextTheme(
            titleLarge: TextStyle(
                fontSize: fontSize * 12,
                fontWeight: FontWeight.w500,
                fontFamily: "poppins",
                color: AppColors.primarycolor),
            titleMedium: TextStyle(
                fontSize: fontSize * 9,
                fontWeight: FontWeight.w500,
                fontFamily: "poppins",
                color: AppColors.black1),
            titleSmall: TextStyle(
                fontSize: fontSize * 7,
                fontWeight: FontWeight.w400,
                fontFamily: "poppins",
                color: AppColors.black1),
            bodyMedium: TextStyle(
                fontSize: fontSize * 8,
                fontWeight: FontWeight.w500,
                fontFamily: "poppins",
                color: AppColors.black1),
            bodySmall: TextStyle(
                fontSize: fontSize * 6.5,
                fontWeight: FontWeight.w400,
                fontFamily: "poppins",
                color: AppColors.black2),
          ),
          scaffoldBackgroundColor: AppColors.offwhite),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

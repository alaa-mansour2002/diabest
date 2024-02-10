import 'dart:async';

import 'package:diabestapp/Core/Utils/Api_links.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/classes/status_request.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Core/functions/handle_data.dart';
import 'package:diabestapp/models/auth_model.dart';
import 'package:flutter/cupertino.dart';

import '../../Core/classes/crud.dart';


class SignInUpController {
  late TextEditingController fullName;

  late TextEditingController nationalID;

  late TextEditingController emailAddress;

  late TextEditingController password;
  late StreamController<StatusRequest> statusSignUpController;

  late Sink<StatusRequest> statusSignUpInputData;

  late Stream<StatusRequest> statusSignUpOutData;

  late TextEditingController confirmThePassword;
  String signInOptions = AppStrings.doctor;
  StatusRequest statusRequest = StatusRequest.none;
  late CRUD crud;
  List<AuthModel> authModel = [];

  SignInUpController() {
    crud = CRUD();
    fullName = TextEditingController();

    nationalID = TextEditingController();

    emailAddress = TextEditingController();

    password = TextEditingController();

    confirmThePassword = TextEditingController();
    statusSignUpController = StreamController();
    statusSignUpInputData = statusSignUpController.sink;
    statusSignUpOutData = statusSignUpController.stream;
    statusSignUpInputData.add(statusRequest);
    // fullName.text = "abrad dfdfgdc yassen";
    // nationalID.text = "12345678991234";
    // emailAddress.text = "aafda@gmail.com";
    // password.text = "74195549865sd";
    // confirmThePassword.text = "74195549865sd";
  }
  /*
  * {user: {fullName: abrad dfdfgdc yassen,
  * slug: abrad-dfdfgdc-yassen,
  * nationalId: 12345678991234,
  * email: aafda@gmail.com,
  * 2211293mmmrs
  * password: $2a$12$Q7ahx0OHeWNRiy77uZVhEeovLWn5ouTdgPe0OrqiRcyEL5AYT0JqO,
  * gender: Male,
  *  profileImage: user-profile-image.jpg,
  * role: Doctor,
  * active: true,
  *  _id: 65c684614dfae5798a23e0bb,
  *  createdAt: 2024-02-09T20:00:33.829Z,
  *  updatedAt: 2024-02-09T20:00:33.829Z, __v: 0},
  *  token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NWM2ODQ2MTRkZmFlNTc5OGEyM2UwYmIiLCJpYXQiOjE3MDc1MDg4MzQsImV4cCI6MjAyMzA4NDgzNH0.dbhZOZUM-YDpC0xF_wz8wKofZvfpQknNizQYE4u3FfU}
  *
  * */

  void onPressedSignUpButton({
    required String fullName,
    required String nationalId,
    required String emailAddress,
    required String password,
    required String confirmPassword,
    required String role
  ,required BuildContext context}) async {
    if (fullName.isEmpty ||
        nationalId.isEmpty ||
        emailAddress.isEmpty ||
        role.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty ||
        password != confirmPassword) {
      statusRequest = StatusRequest.dataNotCompleted;

      statusSignUpInputData.add(statusRequest);
    } else {
      statusRequest = StatusRequest.loading;
      statusSignUpInputData.add(statusRequest);

      var response = await requestDataApi();
      statusRequest = await handlingData(response);
      if (StatusRequest.sucess == statusRequest) {
        // authModel.addAll(authModel.map((e) => AuthModel.fromJson(e)));
        statusSignUpInputData.add(StatusRequest.sucess);
        goToHomePage(context);
        print(response);
      } else {
        statusRequest = response;
        statusSignUpInputData.add(statusRequest);

        authModel.clear();
      }
    }
  }

  requestDataApi() async {
    var response = await
    crud.postData(ApiLinks.signUp, {
      "fullName": fullName.text,
      "nationalId": nationalID.text,
      "email": emailAddress.text,
      "password": password.text,
      "confirmPassword": confirmThePassword.text,
      "gender": "Male",
      "role": signInOptions.toString()

        // "fullName": "alaa yaseen mansodsurr",
        // "nationalId":"12377678974488",
        // "email":"alaaanor1977@gmail.com",
        // "password":"221193mmmrs",
        // "confirmPassword":"221293mmmrs",
        // "gender":"Male",
        // "role":"Patient"

    });
    return response.fold((l) => l, (r) => r);
  }

  void onTapRadioOption(String value) {
    signInOptions = value;
  }
  void goToHomePage(BuildContext context){
    customNavigate(context, "/home");
  }
}

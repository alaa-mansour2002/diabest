import 'dart:async';

import 'package:diabestapp/Core/Utils/Api_links.dart';
import 'package:diabestapp/Core/classes/crud.dart';
import 'package:diabestapp/Core/classes/status_request.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Core/functions/handle_data.dart';
import 'package:diabestapp/models/auth_model.dart';
import 'package:flutter/material.dart';


class SignInController {
  late TextEditingController emailAddress;

  late TextEditingController password;
  late StreamController<StatusRequest> statusSignInController;

  late Sink<StatusRequest> statusSignInInputData;

  late Stream<StatusRequest> statusSignInOutData;
  StatusRequest statusRequest = StatusRequest.none;
  late CRUD crud;
  List<AuthModel> authModel = [];

  SignInController() {
    crud = CRUD();

    emailAddress = TextEditingController();

    password = TextEditingController();

    statusSignInController = StreamController();
    statusSignInInputData = statusSignInController.sink;
    statusSignInOutData = statusSignInController.stream;
    statusSignInInputData.add(statusRequest);

    // emailAddress.text = "alaamanggsor1977@gmail.com";
    // password.text = "2211293mmmrs";
    // confirmThePassword.text = "74195549865sd";
  }

  void onPressedSignUpButton(
      {required String emailAddress,
      required String password,
      required BuildContext context}) async {
    if (emailAddress.isEmpty || password.isEmpty) {
      statusRequest = StatusRequest.dataNotCompleted;

      statusSignInInputData.add(statusRequest);
    } else {
      statusRequest = StatusRequest.loading;
      statusSignInInputData.add(statusRequest);

      var response = await requestDataApi();
      statusRequest = await handlingData(response);
      if (StatusRequest.sucess == statusRequest) {
        // authModel.addAll(authModel.map((e) => AuthModel.fromJson(e)));
        statusSignInInputData.add(StatusRequest.sucess);
        goToHomePage(context);
      } else {
        statusRequest = response;
        statusSignInInputData.add(statusRequest);

        authModel.clear();
      }
    }
  }

  requestDataApi() async {
    var response =
    await crud.postData(ApiLinks.login, {
      "email": emailAddress.text,
      "password": password.text,
    });
    return response.fold((l) => l, (r) => r);
  }

  void goToHomePage(BuildContext context) {
    customNavigate(context, "/home");
  }
  /*
  *  {

  "email":"alaamanggsor1977@gmail.com",
  "password":"2211293mmmrs"

  }
  * */
}

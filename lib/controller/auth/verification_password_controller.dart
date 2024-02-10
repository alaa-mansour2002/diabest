import 'dart:async';

import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Core/functions/handle_data.dart';
import 'package:flutter/cupertino.dart';

import '../../Core/Utils/Api_links.dart';
import '../../Core/classes/crud.dart';
import '../../Core/classes/status_request.dart';
import '../../models/auth_model.dart';

class VerificationPasswordController {
  late TextEditingController emailAddress;

  late StreamController<StatusRequest> emailStreamController;

  late Sink<StatusRequest> emailStreamControllerInputData;

  late Stream<StatusRequest> emailStreamControllerOutData;
  StatusRequest statusRequest = StatusRequest.none;
  late CRUD crud;
  List<AuthModel> authModel = [];

  VerificationPasswordController() {
    crud = CRUD();

    emailAddress = TextEditingController();

    emailStreamController = StreamController();
    emailStreamControllerInputData = emailStreamController.sink;
    emailStreamControllerOutData = emailStreamController.stream;
    emailStreamControllerInputData.add(statusRequest);

    // emailAddress.text = "alaamanggsor1977@gmail.com";
    // password.text = "2211293mmmrs";
    // confirmThePassword.text = "74195549865sd";
  }

  void onPressedForgetPasswordButton({
    required String resetCode,
    required BuildContext context,
  }) async {
    if (resetCode.isEmpty) {
      statusRequest = StatusRequest.dataNotCompleted;

      emailStreamControllerInputData.add(statusRequest);
    } else {
      statusRequest = StatusRequest.loading;
      emailStreamControllerInputData.add(statusRequest);

      var response = await requestDataApi();
      statusRequest = await handlingData(response);
      if (StatusRequest.sucess == statusRequest) {
        // authModel.addAll(authModel.map((e) => AuthModel.fromJson(e)));
        emailStreamControllerInputData.add(statusRequest);
        goToCreateNewPassword(context);
      } else {
        statusRequest = response;
        emailStreamControllerInputData.add(statusRequest);
        authModel.clear();
      }
    }
  }

  requestDataApi() async {
    var response = await crud.postData(
      ApiLinks.resetPassword,
      {
        "resetCode": emailAddress.text,
      },
    );
    return response.fold((l) => l, (r) => r);
  }

  void goToCreateNewPassword(BuildContext context) {
    customNavigate(context, "/CreateNewPassword");
  }
/*
  *  {

  "email":"alaamansor1977@gmail.com",
  "password":"2211293mmmrs"
  * {
  "success": true,
  "resetToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2NWM1NjhmZWRjMTg3NDdhODRmNGIwYWMiLCJpYXQiOjE3MDc1ODU3MzgsImV4cCI6MTcwNzU4NjMzOH0.9hZ_TLLmim2O1Xn_gL4zGpxnX5Y2R5X1OFSCiGgjGIg",
  "msg": "check your email"
}

  }
  * */
}

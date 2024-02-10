import 'dart:async';

import 'package:diabestapp/Core/classes/status_request.dart';
import 'package:flutter/cupertino.dart';

import '../../Core/Utils/Api_links.dart';
import '../../Core/classes/crud.dart';
import '../../Core/functions/Navigation.dart';
import '../../Core/functions/handle_data.dart';
import '../../models/auth_model.dart';

class RegisterPatientController {
  late TextEditingController heightController;
  late TextEditingController weightController;
    String gender='male';
  late TextEditingController statusController;
  late String diabetic='yes';
  late String smoking='yes';
  late String geneticDiabetes='yes';
  late String bloodPresure='yes';
  late String alcohols='yes';
  late String heartDisease='yes';
  late String pancreasDisease='yes';
  late String presuremedications='yes';
  late String takemedications='yes';
  late String oralContraceptives='yes';
  late String pregnant='yes';
  late String breastfeeding='yes';
  late DateTime selectedDate;
  String maritalStatus = 'Single';

  late StreamController<StatusRequest> buttonNextStreamController;

  late Sink<StatusRequest> buttonInputData;

  late Stream<StatusRequest> buttonOutPutData;
  StatusRequest statusRequest = StatusRequest.none;
  late CRUD crud;
  List<AuthModel> authModel = [];

  RegisterPatientController() {
    crud = CRUD();
    selectedDate = DateTime.now();
    weightController = TextEditingController();
    heightController = TextEditingController();
    statusController = TextEditingController();

    buttonNextStreamController = StreamController();
    buttonInputData = buttonNextStreamController.sink;
    buttonOutPutData = buttonNextStreamController.stream;
    buttonInputData.add(statusRequest);

    // emailAddress.text = "alaamanggsor1977@gmail.com";
    // password.text = "2211293mmmrs";
    // confirmThePassword.text = "74195549865sd";
  }

  void onPressedNext({

    required BuildContext context,
  }) async {
    // if (emailAddress.isEmpty) {
    //   statusRequest = StatusRequest.dataNotCompleted;
    //
    //   buttonInputData.add(statusRequest);
    // } else {
      statusRequest = StatusRequest.loading;
      buttonInputData.add(statusRequest);

      var response = await requestDataApi();
      statusRequest = await handlingData(response);
      if (StatusRequest.sucess == statusRequest) {
        // authModel.addAll(authModel.map((e) => AuthModel.fromJson(e)));
        buttonInputData.add(statusRequest);
        // goToVerficationPage(context);
      } else {
        statusRequest = response;
        buttonInputData.add(statusRequest);
        authModel.clear();
      // }
    }
  }

  requestDataApi() async {
    var response = await crud.postData(ApiLinks.patientRegisteration, {
      "age": 45,
      "weight": weightController.text,
      "height": heightController.text,
      "status":" statusController.text",
      "diabeticComa": diabetic,
      "somking": smoking,
      "geneticDiabetes": geneticDiabetes,
      "bloodPresure": bloodPresure,
      "heartDisease": heightController.text,
      "alcohols": alcohols,
      "pancreasDisease": pancreasDisease,
      // ** For Female **
      "oralContraceptives": oralContraceptives,
      "pregnant": pregnant,
      "breastfeeding": breastfeeding,
    });
    return response.fold((l) => l, (r) => r);
  }

  void goToVerficationPage(BuildContext context) {
    customNavigate(context, "/MyVerificationPage");
  }

  void dispose() {
    heightController.dispose();
    weightController.dispose();
    buttonInputData.close();
    buttonNextStreamController.close();
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

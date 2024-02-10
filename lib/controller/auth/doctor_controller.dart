import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Utils/Api_links.dart';
import '../../Core/classes/crud.dart';
import '../../Core/classes/status_request.dart';
import '../../Core/functions/handle_data.dart';
import '../../models/auth_model.dart';

class DoctorController {
  late TextEditingController cityStreetBlockNumber;
  late TextEditingController phoneNumber;

  late TextEditingController whatsApp;

  late TextEditingController facebook;

  String startTime = "8:00 AM";
  String endTime = "8:00 PM";
  late CRUD crud;
  DoctorController() {
    cityStreetBlockNumber = TextEditingController();
    phoneNumber = TextEditingController();
    whatsApp = TextEditingController();
    facebook = TextEditingController();
    doctorController = StreamController();
    doctorInputData = doctorController.sink;
    doctorOutData = doctorController.stream;
    doctorInputData.add(statusRequest);
    crud = CRUD();
  }

  late StreamController<StatusRequest> doctorController;

  late Sink<StatusRequest> doctorInputData;

  late Stream<StatusRequest> doctorOutData;

  StatusRequest statusRequest = StatusRequest.none;

  List<AuthModel> authModel = [];

  //
  void onPressedDoctor(
      {required String cityStreetBlockNumber,
      required String phoneNumber,
      required String whatsApp,
      required String facebook,
      required String start,
      required String end,
      required BuildContext context}) async {
    if (start.isEmpty ||
        end.isEmpty ||
        facebook.isEmpty ||
        whatsApp.isEmpty ||
        phoneNumber.isEmpty ||
        cityStreetBlockNumber.isEmpty) {

      statusRequest = StatusRequest.dataNotCompleted;

      doctorInputData.add(statusRequest);
    } else {
      statusRequest = StatusRequest.loading;
      doctorInputData.add(statusRequest);

      var response = await requestDataApi();
      statusRequest = await handlingData(response);
      if (StatusRequest.sucess == statusRequest) {
        // authModel.addAll(authModel.map((e) => AuthModel.fromJson(e)));
        doctorInputData.add(StatusRequest.sucess);

        print(response);
      } else {
        statusRequest = response;
        doctorInputData.add(statusRequest);

        authModel.clear();
      }
    }
  }

  requestDataApi() async {
    var response = await
    crud.postData(ApiLinks.doctorRegisteration, {
      "specialization": cityStreetBlockNumber.text,
      "phoneNumber": phoneNumber.text,
      "clinicAddress": cityStreetBlockNumber.text,
      "startTime": startTime,
      "endTime": endTime,
      "addressLocation": cityStreetBlockNumber.text,
      "facebookLink": facebook.text,
      "whatsappLink": whatsApp.text
    });
    return response.fold((l) => l, (r) => r);
  }

/*
  specialization,
phoneNumber,
clinicAddress,
startTime,
endTime,
addressLocation,
facebookLink,
whatsappLink
  * */
}

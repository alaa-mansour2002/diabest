import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/Widgets/custom_text_field.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/checked_container.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/doctor_adresses.dart';
import 'package:diabestapp/Features/doctor/presentation/widgets/time_work.dart';
import 'package:diabestapp/controller/auth/doctor_controller.dart';

import 'package:flutter/material.dart';

import '../../../../Core/classes/status_request.dart';

// ignore: must_be_immutable
class DoctorView extends StatefulWidget {
  const DoctorView({super.key});

  @override
  State<DoctorView> createState() => _DoctorViewState();
}

class _DoctorViewState extends State<DoctorView> {
  late DoctorController _doctorController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _doctorController = DoctorController();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: height * 0.04,
                )),
                SliverToBoxAdapter(
                    child: Text(
                  AppStrings.registernow,
                  style: CustomTextStyles.lohit500style24.copyWith(
                      fontWeight: FontWeight.w700, color: AppColors.black2),
                )),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: height * 0.02,
                )),
                SliverToBoxAdapter(
                    child: DoctorAdress(
                  text: AppStrings.specialization,
                )),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: height * 0.01,
                )),
                const SliverToBoxAdapter(child: CheckedContainer()),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: height * 0.01,
                )),
                SliverToBoxAdapter(
                    child: DoctorAdress(
                  text: AppStrings.clinicaddress,
                )),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: height * 0.01,
                )),
                SliverToBoxAdapter(
                    child: CustomTextFormField(
                  mycontroller: _doctorController.cityStreetBlockNumber,
                  labelText: AppStrings.citystreetblocknumber,
                  prefixIcon: const Icon(Icons.location_city_rounded),
                )),
                SliverToBoxAdapter(
                    child: CustomTextFormField(
                  mycontroller: _doctorController.phoneNumber,
                  labelText: AppStrings.phoneNumbe,
                  prefixIcon: const Icon(Icons.phone),
                )),
                SliverToBoxAdapter(
                    child: CustomTextFormField(
                  mycontroller: _doctorController.facebook,
                  labelText: "Link Of Facebook",
                  prefixIcon: const Icon(Icons.facebook),
                )),
                SliverToBoxAdapter(
                    child: CustomTextFormField(
                  mycontroller: _doctorController.whatsApp,
                  labelText: "Link Of WhatsApp",
                  prefixIcon: const Icon(Icons.chat),
                )),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: height * 0.02,
                )),
                SliverToBoxAdapter(
                    child: Row(
                  children: [
                    const Icon(Icons.punch_clock),
                    DoctorAdress(
                      text: AppStrings.timework,
                    )
                  ],
                )),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: height * 0.01,
                )),
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      TimeWork(
                        date: AppStrings.start,
                        selectedStartTime: _doctorController.startTime,
                        onChanged: (value) {
                          setState(() {
                            _doctorController.startTime = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: width * 0.2,
                      ),
                      TimeWork(
                        date: AppStrings.end,
                        selectedStartTime: _doctorController.endTime,
                        onChanged: (value) {
                          setState(() {
                            _doctorController.endTime = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: height * 0.06,
                )),
                SliverToBoxAdapter(
                  child: StreamBuilder(
                      stream: _doctorController.doctorOutData,
                      builder: (context, snapshot) => snapshot.data == null
                          ? const SizedBox()
                          : snapshot.data == StatusRequest.loading
                              ? const Center(child: CircularProgressIndicator())
                              : snapshot.data == StatusRequest.dataNotCompleted
                                  ? Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        if (snapshot.data ==
                                            StatusRequest.dataNotCompleted)
                                          const Center(
                                            child: Text("Add All Data"),
                                          ),
                                        CustomBtn(
                                          text: AppStrings.saveprofile,
                                          onPressed: () {
                                            _doctorController.onPressedDoctor(
                                                cityStreetBlockNumber:
                                                    _doctorController
                                                        .cityStreetBlockNumber
                                                        .text,
                                                phoneNumber: _doctorController
                                                    .phoneNumber.text,
                                                whatsApp: _doctorController
                                                    .whatsApp.text,
                                                facebook: _doctorController
                                                    .facebook.text,
                                                start:
                                                    _doctorController.startTime,
                                                end: _doctorController.endTime,
                                                context:
                                                    context); // customNavigate(
                                            //     context, "/ProfileDoctorView");
                                          },
                                        )
                                      ],
                                    )
                                  : CustomBtn(
                                      text: AppStrings.saveprofile,
                                      onPressed: () {
                                        _doctorController.onPressedDoctor(
                                            cityStreetBlockNumber:
                                                _doctorController
                                                    .cityStreetBlockNumber.text,
                                            phoneNumber: _doctorController
                                                .phoneNumber.text,
                                            whatsApp:
                                                _doctorController.whatsApp.text,
                                            facebook:
                                                _doctorController.facebook.text,
                                            start: _doctorController.startTime,
                                            end: _doctorController.endTime,
                                            context: context);
                                        // customNavigate(
                                        //     context, "/ProfileDoctorView");
                                      },
                                    )),
                ),
              ])),
    ));
  }
}

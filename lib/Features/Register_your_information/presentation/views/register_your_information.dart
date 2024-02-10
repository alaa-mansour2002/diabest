import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Core/Widgets/custom_btn.dart';
import 'package:diabestapp/Core/Widgets/custom_info_for_patient.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/custom_date.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/custom_form_info_page1.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/custom_height-weight.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/custom_marital_status.dart';
import 'package:diabestapp/controller/auth/register_patient_controller.dart';
import 'package:flutter/material.dart';

import '../../../../Core/classes/status_request.dart';

class RegisterYourInformation extends StatefulWidget {
  const RegisterYourInformation({super.key});

  @override
  State<RegisterYourInformation> createState() =>
      _RegisterYourInformationState();
}

class _RegisterYourInformationState extends State<RegisterYourInformation> {
  late RegisterPatientController _registerPatientController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _registerPatientController = RegisterPatientController();
  }

  @override
  void dispose() {
    _registerPatientController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.registerYourInformation,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: "poppins",
              color: AppColors.black2),
        ),
        elevation: 0,
        backgroundColor: AppColors.offwhite,
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  const SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverToBoxAdapter(
                      child: CustomHeightWeight(
                    heightController:
                        _registerPatientController.heightController,
                    weightController:
                        _registerPatientController.weightController,
                  )),
                  const SliverToBoxAdapter(child: SizedBox(height: 10)),
                  SliverToBoxAdapter(
                      child: Row(
                    children: [
                      Expanded(
                          child: DateButton(
                        selectedDate: _registerPatientController.selectedDate,
                      )),
                      Expanded(
                          child: CustomMaritalState(
                        maritalStatus: _registerPatientController.maritalStatus,
                      ))
                    ],
                  )),
                  const SliverToBoxAdapter(child: SizedBox(height: 10)),
                  SliverToBoxAdapter(
                      child: CustomFormInfoPage1(
                    breastfeeding: _registerPatientController.breastfeeding,
                    diabeticcama: _registerPatientController.diabetic,
                    gender: _registerPatientController.gender,
                    doyousmoke: _registerPatientController.smoking,
                    drinkachol: _registerPatientController.alcohols,
                    familyhavediabetes: _registerPatientController.diabetic,
                    oral: _registerPatientController.oralContraceptives,
                    pancreasdisease: _registerPatientController.pancreasDisease,
                    pregnant: _registerPatientController.pregnant,
                    presuremedications:
                        _registerPatientController.presuremedications,
                    takemedications: _registerPatientController.takemedications,
                  )),
                  const SliverToBoxAdapter(child: SizedBox(height: 25)),
                  SliverToBoxAdapter(
                      child: StreamBuilder(
                    stream: _registerPatientController.buttonOutPutData,
                    builder: (context, snapshot) =>
                    snapshot.data == null
                        ? const SizedBox()
                        : snapshot.data == StatusRequest.loading
                        ? const Center(
                        child: CircularProgressIndicator())
                        : snapshot.data == StatusRequest.none
                        ?
                        CustomBtn(
                      text: AppStrings.next,
                      onPressed: () {
                        _registerPatientController.onPressedNext(
                            context: context);
                        // customNavigate(context, "/registerYourInformationpage3");
                      },
                    ) : snapshot.data ==
                        StatusRequest.dataNotCompleted
                        ? Column(
                      children: [
                        if (snapshot.data ==
                            StatusRequest
                                .dataNotCompleted)
                          const Center(
                            child: Text(
                              "enter all filed",
                              style: TextStyle(
                                  color: Colors.red),
                            ),
                          ),
                        CustomBtn(
                          text: AppStrings.next,
                          onPressed: () {
                            _registerPatientController.onPressedNext(
                                context: context);
                            // customNavigate(context, "/registerYourInformationpage3");
                          },
                        )
                      ],
                    )
                        : Column(
                          children: [
                            CustomBtn(
                              text: AppStrings.next,
                              onPressed: () {
                                _registerPatientController.onPressedNext(
                                    context: context);
                                // customNavigate(context, "/registerYourInformationpage3");
                              },
                            ),
                            Center(

                            child: Text(
                                snapshot.data.toString())),
                          ],
                        ),
                  )),
                  const SliverToBoxAdapter(child: SizedBox(height: 10)),
                ])),
      ),
    );
  }
}

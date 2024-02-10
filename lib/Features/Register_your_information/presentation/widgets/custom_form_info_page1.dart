import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/Utils/App-TextStyles.dart';
import 'package:diabestapp/Core/Utils/App-colors.dart';
import 'package:diabestapp/Features/Register_your_information/presentation/widgets/information_adresses.dart';
import 'package:flutter/material.dart';

class CustomFormInfoPage1 extends StatefulWidget {
  CustomFormInfoPage1({
    super.key,
    required this.gender,
    this.breastfeeding = 'yes',
    this.diabeticcama = 'yes',
    this.doyousmoke = 'yes',
    this.familyhavediabetes = 'yes',
    this.drinkachol = 'yes',
    this.pancreasdisease = 'yes',
    this.takemedications = 'yes',
    this.presuremedications = 'yes',
    this.pregnant = 'yes',
    this.oral = 'yes',
  });

  String gender;

  String diabeticcama;
  String doyousmoke;
  String familyhavediabetes;
  String oral;
  String breastfeeding;
  String pregnant;
  String presuremedications;
  String takemedications;
  String drinkachol;
  String pancreasdisease;

  @override
  State<CustomFormInfoPage1> createState() => _CustomFormInfoPage1State();
}

class _CustomFormInfoPage1State extends State<CustomFormInfoPage1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InformationAdresses(text: AppStrings.gender),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'male',
                groupValue: widget.gender,
                onChanged: (val) {
                  setState(() {
                    widget.gender = val!;
                  });
                }),
            const Icon(
              Icons.man,
              size: 50,
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'female',
                groupValue: widget.gender,
                onChanged: (val) {
                  setState(() {
                    widget.gender = val!;
                  });
                }),
            const Icon(
              Icons.woman_outlined,
              size: 50,
            ),
          ],
        ),
        InformationAdresses(text: AppStrings.doyousufferfromdiabeticcoma),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: widget.diabeticcama,
                onChanged: (val) {
                  setState(() {
                    widget.diabeticcama = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.yes,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: widget.diabeticcama,
                onChanged: (val) {
                  setState(() {
                    widget.diabeticcama = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.no,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
          ],
        ),
        InformationAdresses(text: AppStrings.doyousmoke),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: widget.doyousmoke,
                onChanged: (val) {
                  setState(() {
                    widget.doyousmoke = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.yes,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: widget.doyousmoke,
                onChanged: (val) {
                  setState(() {
                    widget.doyousmoke = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.no,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
          ],
        ),
        InformationAdresses(
            text: AppStrings.doesanyoneinyourfamilyhavediabetes),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: widget.familyhavediabetes,
                onChanged: (val) {
                  setState(() {
                    widget.familyhavediabetes = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.yes,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: widget.familyhavediabetes,
                onChanged: (val) {
                  setState(() {
                    widget.familyhavediabetes = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.no,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
          ],
        ),
        InformationAdresses(text: AppStrings.doyouusebloodpresuremedications),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: widget.presuremedications,
                onChanged: (val) {
                  setState(() {
                    widget.presuremedications = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.yes,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: widget.presuremedications,
                onChanged: (val) {
                  setState(() {
                    widget.presuremedications = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.no,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
          ],
        ),
        InformationAdresses(
            text: AppStrings
                .doyoutakemedicationforatheroscleriosisoranyheartdisease),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: widget.takemedications,
                onChanged: (val) {
                  setState(() {
                    widget.takemedications = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.yes,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: widget.takemedications,
                onChanged: (val) {
                  setState(() {
                    widget.takemedications = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.no,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
          ],
        ),
        InformationAdresses(text: AppStrings.doyoudrinkalcholetc),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: widget.drinkachol,
                onChanged: (val) {
                  setState(() {
                    widget.drinkachol = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.yes,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: widget.drinkachol,
                onChanged: (val) {
                  setState(() {
                    widget.drinkachol = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.no,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
          ],
        ),
        InformationAdresses(
            text: AppStrings.doyouhavemedicationforanyhepaticdisease),
        const SizedBox(
          height: 7,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio(
                value: 'yes',
                groupValue: widget.pancreasdisease,
                onChanged: (val) {
                  setState(() {
                    widget.pancreasdisease = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.yes,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Radio(
                value: 'no',
                groupValue: widget.pancreasdisease,
                onChanged: (val) {
                  setState(() {
                    widget.pancreasdisease = val!;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                AppStrings.no,
                style: CustomTextStyles.lohit400style18,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        if (widget.gender == 'female')
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.woman_2_outlined,
                    size: 40,
                    color: AppColors.black2,
                  ),
                  Text(
                    AppStrings.forfemale,
                    style: CustomTextStyles.lohit500style24
                        .copyWith(color: AppColors.black2),
                  )
                ],
              ),
              InformationAdresses(text: AppStrings.doyouhaveoralcontraceptives),
              const SizedBox(
                height: 7,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio(
                      value: 'yes',
                      groupValue: widget.oral,
                      onChanged: (val) {
                        setState(() {
                          widget.oral = val!;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      AppStrings.yes,
                      style: CustomTextStyles.lohit400style18,
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Radio(
                      value: 'no',
                      groupValue: widget.oral,
                      onChanged: (val) {
                        setState(() {
                          widget.oral = val!;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      AppStrings.no,
                      style: CustomTextStyles.lohit400style18,
                    ),
                  ),
                ],
              ),
              InformationAdresses(text: AppStrings.areyoupregnant),
              const SizedBox(
                height: 7,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio(
                      value: 'yes',
                      groupValue: widget.pregnant,
                      onChanged: (val) {
                        setState(() {
                          widget.pregnant = val!;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      AppStrings.yes,
                      style: CustomTextStyles.lohit400style18,
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Radio(
                      value: 'no',
                      groupValue: widget.pregnant,
                      onChanged: (val) {
                        setState(() {
                          widget.pregnant = val!;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      AppStrings.no,
                      style: CustomTextStyles.lohit400style18,
                    ),
                  ),
                ],
              ),
              InformationAdresses(text: AppStrings.areyoubreastfeeding),
              const SizedBox(
                height: 7,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio(
                      value: 'yes',
                      groupValue: widget.breastfeeding,
                      onChanged: (val) {
                        setState(() {
                          widget.breastfeeding = val!;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      AppStrings.yes,
                      style: CustomTextStyles.lohit400style18,
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Radio(
                      value: 'no',
                      groupValue: widget.breastfeeding,
                      onChanged: (val) {
                        setState(() {
                          widget.breastfeeding = val!;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      AppStrings.no,
                      style: CustomTextStyles.lohit400style18,
                    ),
                  ),
                ],
              )
            ],
          ),
      ],
    );
  }
}

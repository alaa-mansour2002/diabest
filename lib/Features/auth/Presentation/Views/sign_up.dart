import 'package:diabestapp/Core/Utils/App-Assets.dart';
import 'package:diabestapp/Core/Utils/App-String.dart';
import 'package:diabestapp/Core/classes/status_request.dart';
import 'package:diabestapp/Core/functions/Navigation.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/custom_signup_form.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/have_an_account_widget.dart';
import 'package:diabestapp/controller/auth/sign_up_controller.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  late SignInUpController _signInUpController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _signInUpController = SignInUpController();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: Image.asset(Assets.imagesImageSigin)),
              SliverToBoxAdapter(child: SizedBox(height: height * 0.02)),
              SliverToBoxAdapter(
                child: StreamBuilder(
                    stream: _signInUpController.statusSignUpOutData,
                    builder: (context, snapshot) =>
                    snapshot.data == null
                        ? const SizedBox()
                        : snapshot.data == StatusRequest.loading
                            ? const Center(child: CircularProgressIndicator())
                            : snapshot.data == StatusRequest.none
                                ? CustomSignUpForm(
                                    onChangedRadio: (value) {
                                      setState(() {});
                                      _signInUpController
                                          .onTapRadioOption(value!);
                                    },
                                    optionGroup:
                                        _signInUpController.signInOptions,
                                    onPressedSignUp: () {
                                      _signInUpController.onPressedSignUpButton(
                                          context: context,
                                          fullName:
                                              _signInUpController.fullName.text,
                                          nationalId: _signInUpController
                                              .nationalID.text,
                                          emailAddress: _signInUpController
                                              .emailAddress.text,
                                          password:
                                              _signInUpController.password.text,
                                          confirmPassword: _signInUpController
                                              .confirmThePassword.text,
                                          role: _signInUpController
                                              .signInOptions);
                                    },
                                    fullName: _signInUpController.fullName,
                                    nationalID: _signInUpController.nationalID,
                                    emailAddress:
                                        _signInUpController.emailAddress,
                                    password: _signInUpController.password,
                                    confirmThePassword:
                                        _signInUpController.confirmThePassword)
                                : snapshot.data ==
                                        StatusRequest.dataNotCompleted
                                    ? Column(
                                        children: [
                                          if (snapshot.data ==
                                              StatusRequest.dataNotCompleted)
                                            const Center(
                                              child: Text(
                                                "enter all filed",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                            ),
                                          CustomSignUpForm(
                                              onChangedRadio: (value) {
                                                setState(() {});
                                                _signInUpController
                                                    .onTapRadioOption(value!);
                                              },
                                              optionGroup: _signInUpController
                                                  .signInOptions,
                                              onPressedSignUp: () {
                                                _signInUpController.onPressedSignUpButton(
                                                    fullName: _signInUpController
                                                        .fullName.text,
                                                    context: context,
                                                    nationalId:
                                                        _signInUpController
                                                            .nationalID.text,
                                                    emailAddress:
                                                        _signInUpController
                                                            .emailAddress.text,
                                                    password:
                                                        _signInUpController
                                                            .password.text,
                                                    confirmPassword:
                                                        _signInUpController
                                                            .confirmThePassword
                                                            .text,
                                                    role: _signInUpController
                                                        .signInOptions);
                                              },
                                              fullName:
                                                  _signInUpController.fullName,
                                              nationalID: _signInUpController
                                                  .nationalID,
                                              emailAddress: _signInUpController
                                                  .emailAddress,
                                              password:
                                                  _signInUpController.password,
                                              confirmThePassword:
                                                  _signInUpController
                                                      .confirmThePassword),
                                        ],
                                      )
                                    : CustomSignUpForm(
                        onChangedRadio: (value) {
                          setState(() {});
                          _signInUpController
                              .onTapRadioOption(value!);
                        },
                        optionGroup:
                        _signInUpController.signInOptions,
                        onPressedSignUp: () {
                          _signInUpController.onPressedSignUpButton(
                              context: context,
                              fullName:
                              _signInUpController.fullName.text,
                              nationalId: _signInUpController
                                  .nationalID.text,
                              emailAddress: _signInUpController
                                  .emailAddress.text,
                              password:
                              _signInUpController.password.text,
                              confirmPassword: _signInUpController
                                  .confirmThePassword.text,
                              role: _signInUpController
                                  .signInOptions);
                        },
                        fullName: _signInUpController.fullName,
                        nationalID: _signInUpController.nationalID,
                        emailAddress:
                        _signInUpController.emailAddress,
                        password: _signInUpController.password,
                        confirmThePassword:
                        _signInUpController.confirmThePassword)),
              ),
              SliverToBoxAdapter(child: SizedBox(height: height * 0.01)),
              SliverToBoxAdapter(
                child: HaveAnAccountWidget(
                  text1: AppStrings.alreadyHaveAnAccount,
                  text2: AppStrings.signIn,
                  onTap: () {
                    customNavigate(context, "/signIn");
                  },
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: height * 0.01)),
            ],
          ),
        ),
      ),
    );
  }
}

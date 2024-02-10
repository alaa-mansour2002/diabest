import 'package:diabestapp/Features/auth/Presentation/widgets/custom_signin_form.dart';
 import 'package:flutter/material.dart';

import '../../../../Core/classes/status_request.dart';
import '../../../../controller/auth/sign_in_controller.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  late SignInController signInController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    signInController = SignInController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(
                    child: StreamBuilder(
                        stream: signInController.statusSignInOutData,
                        builder: (context, snapshot) =>
                        snapshot.data == null
                            ? const SizedBox()
                            : snapshot.data == StatusRequest.loading
                                ? const Center(
                                    child: CircularProgressIndicator())
                                : snapshot.data == StatusRequest.none
                                    ? CustomSignInForm(
                                        password: signInController.password,
                                        emailAddress:
                                            signInController.emailAddress,
                                        onPressedSignIn: () {
                                          signInController
                                              .onPressedSignUpButton(
                                                  emailAddress: signInController
                                                      .emailAddress.text,
                                                  password: signInController
                                                      .password.text,
                                                  context: context);
                                        },
                                      )
                                    : snapshot.data ==
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
                                              CustomSignInForm(
                                                password:
                                                    signInController.password,
                                                emailAddress: signInController
                                                    .emailAddress,
                                                onPressedSignIn: () {
                                                  signInController
                                                      .onPressedSignUpButton(
                                                          emailAddress:
                                                              signInController
                                                                  .emailAddress
                                                                  .text,
                                                          password:
                                                              signInController
                                                                  .password
                                                                  .text,
                                                          context: context);
                                                },
                                              )
                                            ],
                                          )
                                        : Center(
                                            child: Text(
                                                snapshot.data.toString()))),
                  ),
                ])));
  }
}

import 'package:diabestapp/Core/classes/status_request.dart';
import 'package:diabestapp/Features/auth/Presentation/widgets/custom_forget_password.dart';
import 'package:diabestapp/controller/auth/forget_password_controller.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViews extends StatefulWidget {
  const ForgotPasswordViews({super.key});

  @override
  State<ForgotPasswordViews> createState() => _ForgotPasswordViewsState();
}

class _ForgotPasswordViewsState extends State<ForgotPasswordViews> {
  late ForgetPasswordController _forgetPasswordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _forgetPasswordController = ForgetPasswordController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0, title: const Text('Forget Password')),
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: StreamBuilder<StatusRequest>(
                  stream:
                      _forgetPasswordController.emailStreamControllerOutData,
                  builder: (context, snapshot) => snapshot.data == null
                      ? const SizedBox()
                      : snapshot.data == StatusRequest.loading
                          ? const Center(child: CircularProgressIndicator())
                          : snapshot.data == StatusRequest.none
                              ? CustomForgetPasswordForm(
                                  onPressed: () {
                                    _forgetPasswordController
                                        .onPressedForgetPasswordButton(
                                      context: context,
                                      emailAddress: _forgetPasswordController
                                          .emailAddress.text,
                                    );
                                  },
                                  emailAddress:
                                      _forgetPasswordController.emailAddress,
                                )
                              : snapshot.data == StatusRequest.dataNotCompleted
                                  ? Column(
                                      children: [
                                        if (snapshot.data ==
                                            StatusRequest.dataNotCompleted)
                                          const Center(
                                            child: Text(
                                              "enter all filed",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                        CustomForgetPasswordForm(
                                          onPressed: () {
                                            _forgetPasswordController
                                                .onPressedForgetPasswordButton(
                                                    context: context,
                                                    emailAddress:
                                                        _forgetPasswordController
                                                            .emailAddress.text);
                                          },
                                          emailAddress:
                                              _forgetPasswordController
                                                  .emailAddress,
                                        )
                                      ],
                                    )
                                  : CustomForgetPasswordForm(
                                    onPressed: () {
                                      _forgetPasswordController
                                          .onPressedForgetPasswordButton(
                                          context: context,
                                          emailAddress:
                                          _forgetPasswordController
                                              .emailAddress.text);
                                    },
                                    emailAddress:
                                    _forgetPasswordController
                                        .emailAddress,
                                  ),
                ))));
  }
}

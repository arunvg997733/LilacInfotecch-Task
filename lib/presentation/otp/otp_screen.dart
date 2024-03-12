import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilacinfotechtask/application/auth/auth_bloc.dart';
import 'package:lilacinfotechtask/core/constant/constant.dart';
import 'package:lilacinfotechtask/core/constant_fuction/constant_function.dart';
import 'package:lilacinfotechtask/core/font_size/font_size.dart';
import 'package:lilacinfotechtask/infrastuture/services/auth_services.dart';
import 'package:lilacinfotechtask/presentation/widget/custom_button/custom_button_widget.dart';
import 'package:lilacinfotechtask/presentation/widget/text/text_widget.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({super.key, required this.verificationId});
  final String verificationId;
  String? otpSent;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomTextWidget(text: "Verification", size: xXLFont),
              kHeight30,
              CustomTextWidget(text: 'Enter the OTP sent to your phone number'),
              kHeight30,
              Pinput(
                showCursor: true,
                length: 6,
                defaultPinTheme: PinTheme(
                  width: 50,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  textStyle: TextStyle(fontSize: mFont),
                ),
                onCompleted: (value) {
                  otpSent = value;
                },
              ),
              kHeight30,
              CustomButton(
                text: 'Verify',
                width: double.infinity,
                function: () {
                  if (otpSent != null) {
                    context.read<AuthBloc>().add(AuthEvent.verifyOTP(
                        context: context,
                        verificationId: verificationId,
                        otpSent: otpSent!));
                    // verifyOTP(
                    //     context: context,
                    //     verificationId: verificationId,
                    //     otpSent: otpSent!);
                  } else {
                    showToast(msg: 'Please enter OTP ');
                  }
                },
              )
            ],
          ),
        ),
      ),
    ));
  }
}

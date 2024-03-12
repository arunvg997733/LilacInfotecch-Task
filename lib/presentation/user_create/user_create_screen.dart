import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilacinfotechtask/application/auth/auth_bloc.dart';
import 'package:lilacinfotechtask/core/constant/constant.dart';
import 'package:lilacinfotechtask/core/constant_fuction/constant_function.dart';
import 'package:lilacinfotechtask/core/firebse_instance/firebase_instance.dart';
import 'package:lilacinfotechtask/core/font_size/font_size.dart';
import 'package:lilacinfotechtask/presentation/widget/custom_button/custom_button_widget.dart';
import 'package:lilacinfotechtask/presentation/widget/icon/icon_widget.dart';
import 'package:lilacinfotechtask/presentation/widget/text/text_widget.dart';
import 'package:lilacinfotechtask/presentation/widget/text_field/text_field_widget.dart';

class UserCreateScreen extends StatelessWidget {
  UserCreateScreen({super.key});

  final GlobalKey<FormState> fkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                state.mobileNumberCtr.text =
                    authServer.currentUser!.phoneNumber.toString();
                return Form(
                  key: fkey,
                  child: Column(
                    children: [
                      kHeight50,
                      Container(),
                      CustomTextWidget(text: "Create Profile", size: xXLFont),
                      kHeight30,
                      CircleAvatar(
                        radius: size.width * .2,
                        child: CustomIconWidget(
                          icon: Icons.person,
                          size: 130,
                        ),
                      ),
                      kHeight30,
                      CustomTextFormField(
                        validator: checkFieldEmpty,
                        size: double.infinity,
                        hint: 'Name',
                        controller: state.nameCtr,
                      ),
                      kHeight20,
                      CustomTextFormField(
                        validator: checkFieldEmpty,
                        size: double.infinity,
                        hint: 'Mobile Number',
                        readOnly: true,
                        controller: state.mobileNumberCtr,
                      ),
                      kHeight20,
                      CustomTextFormField(
                        validator: checkFieldEmpty,
                        size: double.infinity,
                        hint: 'Email',
                        controller: state.emailCtr,
                      ),
                      kHeight20,
                      CustomTextFormField(
                        keyboardType: TextInputType.number,
                        validator: checkFieldEmpty,
                        size: double.infinity,
                        hint: 'Date of birth',
                        controller: state.dateOfBirthCtr,
                      ),

                      kHeight30,
                      // state.isLoading
                      //     ? const LoadingGradientContainer(width: double.infinity)
                      CustomButton(
                        text: 'Create',
                        width: double.infinity,
                        function: () {
                          if (fkey.currentState?.validate() ?? false) {
                            context.read<AuthBloc>().add(AuthEvent.addUserdata(
                                name: state.nameCtr.text,
                                mobile: state.mobileNumberCtr.text,
                                image: state.nameCtr.text,
                                email: state.emailCtr.text,
                                dateOfBirth: state.dateOfBirthCtr.text,context: context));
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

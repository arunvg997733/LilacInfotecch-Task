import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilacinfotechtask/application/auth/auth_bloc.dart';
import 'package:lilacinfotechtask/application/profile/profile_bloc.dart';
import 'package:lilacinfotechtask/core/constant/constant.dart';
import 'package:lilacinfotechtask/core/font_size/font_size.dart';
import 'package:lilacinfotechtask/presentation/widget/icon/icon_widget.dart';
import 'package:lilacinfotechtask/presentation/widget/text/text_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    context.read<ProfileBloc>().add(const ProfileEvent.getUserData());
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          context
                              .read<AuthBloc>()
                              .add(AuthEvent.signOut(context: context));
                        },
                        icon: CustomIconWidget(icon: Icons.logout_outlined),
                      )
                    ],
                  ),
                  kHeight10,
                  CustomTextWidget(text: "My Profile", size: xXLFont),
                  kHeight50,
                  CircleAvatar(
                    radius: size.width * .2,
                    child: CustomIconWidget(
                      icon: Icons.person,
                      size: 130,
                    ),
                  ),
                  kHeight30,
                  CustomTextWidget(text: state.name, size: lFont),
                  kHeight20,
                  CustomTextWidget(text: state.mobile, size: lFont),
                  kHeight20,
                  CustomTextWidget(text: state.email, size: lFont),
                  kHeight20,
                  CustomTextWidget(text: state.dateOfBirth, size: lFont),

                  kHeight30,
                  // state.isLoading
                  //     ? const LoadingGradientContainer(width: double.infinity)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

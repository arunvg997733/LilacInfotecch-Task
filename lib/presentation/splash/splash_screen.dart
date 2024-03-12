import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilacinfotechtask/application/auth/auth_bloc.dart';
import 'package:lilacinfotechtask/core/font_size/font_size.dart';
import 'package:lilacinfotechtask/presentation/login/login_screen.dart';
import 'package:lilacinfotechtask/presentation/register/register_screen.dart';
import 'package:lilacinfotechtask/presentation/widget/text/text_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (timer) {
      context.read<AuthBloc>().add(AuthEvent.checkUserStatus(context: context));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.video_camera_back,
              size: 150,
            ),
            CustomTextWidget(
                text: 'Video Player', size: xXLFont, weight: FontWeight.bold),
            // Center(
            //   child: ElevatedButton(
            //     onPressed: () => _notifier.value =
            //         mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
            //     child: Text('Toggle Theme'),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lilacinfotechtask/application/auth/auth_bloc.dart';
import 'package:lilacinfotechtask/core/constant_fuction/constant_function.dart';
import 'package:lilacinfotechtask/core/firebse_instance/firebase_instance.dart';
import 'package:lilacinfotechtask/domain/user/user_model.dart';
import 'package:lilacinfotechtask/presentation/main_screen/main_screen.dart';
import 'package:lilacinfotechtask/presentation/otp/otp_screen.dart';
import 'package:lilacinfotechtask/presentation/register/register_screen.dart';

class AuthServices {
  void signWithPhoneNumber(BuildContext context, String number) async {
    try {
      await authServer.verifyPhoneNumber(
        phoneNumber: number,
        verificationCompleted: (phoneAuthCredential) async {
          await authServer.signInWithCredential(phoneAuthCredential);
        },
        verificationFailed: (error) {
          showToast(msg: error.message.toString());
          throw Exception(error.message);
        },
        codeSent: (verificationId, forceResendingToken) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OTPScreen(
                    verificationId: verificationId,
                  )));
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    } on FirebaseAuthException catch (e) {
      showToast(msg: e.message.toString());
    }
  }

  void verifyOTP({
    required BuildContext context,
    required String verificationId,
    required String otpSent,
  }) async {
    try {
      Completer completer = Completer();
      PhoneAuthCredential cred = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: otpSent);
      await authServer.signInWithCredential(cred).then((value) {
        if (value.user != null) {
          context
              .read<AuthBloc>()
              .add(AuthEvent.checkUserStatus(context: context));
        }
      });
    } on FirebaseAuthException catch (e) {
      showToast(msg: e.message.toString());
    }
  }

  Future<bool> checkUserExist() async {
    final userData = await dataServer
        .collection('UserCollection')
        .doc(authServer.currentUser!.uid)
        .get();
    if (userData.exists) {
      return true;
    } else {
      return false;
    }
  }

  void addUserData(
      {required String name,
      required String mobile,
      required String image,
      required String email,
      required String dateOfBirth,
      required BuildContext context}) async {
    final userData = UserModel(
        name: name,
        mobile: mobile,
        email: email,
        dateOfBirth: dateOfBirth,
        image: image);
    try {
      await dataServer
          .collection('UserCollection')
          .doc(authServer.currentUser!.uid)
          .set(userData.toMap())
          .then((value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => MainScreen(),
            ),
            (route) => false);
        showToast(msg: "User Added Successfully");
      });
    } catch (e) {}
  }

  Future<UserModel?> getUserData() async {
    try {
      final userData = await dataServer
          .collection('UserCollection')
          .doc(authServer.currentUser!.uid)
          .get();

      final userModelData = UserModel.fromMap(userData.data()!);
      return userModelData;
    } catch (e) {
      return null;
    }
  }

  void signOut(BuildContext context) {
    authServer.signOut().then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const RegisterScreen(),
          ),
          (route) => false);
    });
  }
}

void verifyOTP({
  required BuildContext context,
  required String verificationId,
  required String otpSent,
}) async {
  print(verificationId);
  try {
    PhoneAuthCredential cred = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpSent);
    User? user = (await authServer.signInWithCredential(cred)).user;
  } on FirebaseAuthException catch (e) {
    showToast(msg: e.message.toString());
  }
}

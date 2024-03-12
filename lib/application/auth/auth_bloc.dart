import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lilacinfotechtask/core/constant_fuction/constant_function.dart';
import 'package:lilacinfotechtask/core/firebse_instance/firebase_instance.dart';
import 'package:lilacinfotechtask/infrastuture/services/auth_services.dart';
import 'package:lilacinfotechtask/presentation/main_screen/main_screen.dart';
import 'package:lilacinfotechtask/presentation/otp/otp_screen.dart';
import 'package:lilacinfotechtask/presentation/register/register_screen.dart';
import 'package:lilacinfotechtask/presentation/user_create/user_create_screen.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial()) {
    on<_CheckUserStatus>((event, emit) async {
      final status = authServer.currentUser;
      if (status == null) {
        Navigator.pushAndRemoveUntil(
            event.context,
            MaterialPageRoute(
              builder: (context) => const RegisterScreen(),
            ),
            (route) => false);
      } else {
        await AuthServices().checkUserExist().then((value) {
          if (!value) {
            Navigator.pushAndRemoveUntil(
                event.context,
                MaterialPageRoute(
                  builder: (context) => UserCreateScreen(),
                ),
                (route) => false);
          } else {
            Navigator.pushAndRemoveUntil(
                event.context,
                MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ),
                (route) => false);
          }
        });
      }
    });
    on<_signWithPhoneNumber>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      // AuthServices().signWithPhoneNumber(event.context, event.number);
      try {
        await authServer.verifyPhoneNumber(
          phoneNumber: event.number,
          verificationCompleted: (phoneAuthCredential) async {
            await authServer.signInWithCredential(phoneAuthCredential);
          },
          verificationFailed: (error) {
            showToast(msg: error.message.toString());
            throw Exception(error.message);
          },
          codeSent: (verificationId, forceResendingToken) {
            Navigator.of(event.context).push(MaterialPageRoute(
                builder: (context) => OTPScreen(
                      verificationId: verificationId,
                    )));
          },
          codeAutoRetrievalTimeout: (verificationId) {},
        );
      } on FirebaseAuthException catch (e) {
        showToast(msg: e.message.toString());
      }
      emit(state.copyWith(isLoading: false));
    });

    on<_VerifyOTP>((event, emit) async {
      AuthServices().verifyOTP(
          context: event.context,
          verificationId: event.verificationId,
          otpSent: event.otpSent);
    });

    on<_AddUserdata>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      AuthServices().addUserData(
        name: event.name,
        mobile: event.mobile,
        image: event.image,
        email: event.email,
        dateOfBirth: event.dateOfBirth,
        context: event.context,
      );
      emit(state.copyWith(isLoading: false));
    });

    on<_SignOut>((event, emit) async {
      AuthServices().signOut(event.context);
    });
  }
}

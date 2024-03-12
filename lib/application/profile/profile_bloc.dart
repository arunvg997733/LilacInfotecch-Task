import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lilacinfotechtask/infrastuture/services/auth_services.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<_GetUserData>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final userData = await AuthServices().getUserData();
      if (userData != null) {
        emit(state.copyWith(
            isLoading: false,
            name: userData.name,
            mobile: userData.mobile,
            image: userData.image,
            email: userData.email,
            dateOfBirth: userData.dateOfBirth));
      } else {
        emit(state.copyWith(isLoading: false, isError: true));
      }
    });
  }
}

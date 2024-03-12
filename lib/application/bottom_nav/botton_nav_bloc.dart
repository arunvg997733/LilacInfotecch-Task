import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'botton_nav_event.dart';
part 'botton_nav_state.dart';
part 'botton_nav_bloc.freezed.dart';

class BottonNavBloc extends Bloc<BottonNavEvent, BottonNavState> {
  BottonNavBloc() : super(BottonNavState.initial()) {
    on<_OnChange>((event, emit) {
      emit(state.copyWith(index: event.Index));
    });
  }
}

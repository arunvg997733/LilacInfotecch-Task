part of 'botton_nav_bloc.dart';

@freezed
class BottonNavState with _$BottonNavState {
  const factory BottonNavState({
    required int index,
  }) = _BottonNavState;
  factory BottonNavState.initial() => BottonNavState(index: 0);
}

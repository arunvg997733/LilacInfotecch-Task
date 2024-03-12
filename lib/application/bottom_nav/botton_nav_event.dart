part of 'botton_nav_bloc.dart';

@freezed
class BottonNavEvent with _$BottonNavEvent {
  const factory BottonNavEvent.onChange({
    required int Index
  }) = _OnChange;
}
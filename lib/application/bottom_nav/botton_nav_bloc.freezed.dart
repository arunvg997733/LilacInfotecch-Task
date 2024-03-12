// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'botton_nav_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottonNavEvent {
  int get Index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int Index) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int Index)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int Index)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChange value) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChange value)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChange value)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottonNavEventCopyWith<BottonNavEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottonNavEventCopyWith<$Res> {
  factory $BottonNavEventCopyWith(
          BottonNavEvent value, $Res Function(BottonNavEvent) then) =
      _$BottonNavEventCopyWithImpl<$Res, BottonNavEvent>;
  @useResult
  $Res call({int Index});
}

/// @nodoc
class _$BottonNavEventCopyWithImpl<$Res, $Val extends BottonNavEvent>
    implements $BottonNavEventCopyWith<$Res> {
  _$BottonNavEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Index = null,
  }) {
    return _then(_value.copyWith(
      Index: null == Index
          ? _value.Index
          : Index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnChangeImplCopyWith<$Res>
    implements $BottonNavEventCopyWith<$Res> {
  factory _$$OnChangeImplCopyWith(
          _$OnChangeImpl value, $Res Function(_$OnChangeImpl) then) =
      __$$OnChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int Index});
}

/// @nodoc
class __$$OnChangeImplCopyWithImpl<$Res>
    extends _$BottonNavEventCopyWithImpl<$Res, _$OnChangeImpl>
    implements _$$OnChangeImplCopyWith<$Res> {
  __$$OnChangeImplCopyWithImpl(
      _$OnChangeImpl _value, $Res Function(_$OnChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Index = null,
  }) {
    return _then(_$OnChangeImpl(
      Index: null == Index
          ? _value.Index
          : Index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnChangeImpl implements _OnChange {
  const _$OnChangeImpl({required this.Index});

  @override
  final int Index;

  @override
  String toString() {
    return 'BottonNavEvent.onChange(Index: $Index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeImpl &&
            (identical(other.Index, Index) || other.Index == Index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeImplCopyWith<_$OnChangeImpl> get copyWith =>
      __$$OnChangeImplCopyWithImpl<_$OnChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int Index) onChange,
  }) {
    return onChange(Index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int Index)? onChange,
  }) {
    return onChange?.call(Index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int Index)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(Index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChange value) onChange,
  }) {
    return onChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChange value)? onChange,
  }) {
    return onChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChange value)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(this);
    }
    return orElse();
  }
}

abstract class _OnChange implements BottonNavEvent {
  const factory _OnChange({required final int Index}) = _$OnChangeImpl;

  @override
  int get Index;
  @override
  @JsonKey(ignore: true)
  _$$OnChangeImplCopyWith<_$OnChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BottonNavState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottonNavStateCopyWith<BottonNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottonNavStateCopyWith<$Res> {
  factory $BottonNavStateCopyWith(
          BottonNavState value, $Res Function(BottonNavState) then) =
      _$BottonNavStateCopyWithImpl<$Res, BottonNavState>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$BottonNavStateCopyWithImpl<$Res, $Val extends BottonNavState>
    implements $BottonNavStateCopyWith<$Res> {
  _$BottonNavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottonNavStateImplCopyWith<$Res>
    implements $BottonNavStateCopyWith<$Res> {
  factory _$$BottonNavStateImplCopyWith(_$BottonNavStateImpl value,
          $Res Function(_$BottonNavStateImpl) then) =
      __$$BottonNavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$BottonNavStateImplCopyWithImpl<$Res>
    extends _$BottonNavStateCopyWithImpl<$Res, _$BottonNavStateImpl>
    implements _$$BottonNavStateImplCopyWith<$Res> {
  __$$BottonNavStateImplCopyWithImpl(
      _$BottonNavStateImpl _value, $Res Function(_$BottonNavStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$BottonNavStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BottonNavStateImpl implements _BottonNavState {
  const _$BottonNavStateImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'BottonNavState(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottonNavStateImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottonNavStateImplCopyWith<_$BottonNavStateImpl> get copyWith =>
      __$$BottonNavStateImplCopyWithImpl<_$BottonNavStateImpl>(
          this, _$identity);
}

abstract class _BottonNavState implements BottonNavState {
  const factory _BottonNavState({required final int index}) =
      _$BottonNavStateImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$BottonNavStateImplCopyWith<_$BottonNavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

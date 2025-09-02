// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_bank_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateBankAccountState {

 CreateBankAccountStatus get status; String get name;
/// Create a copy of CreateBankAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBankAccountStateCopyWith<CreateBankAccountState> get copyWith => _$CreateBankAccountStateCopyWithImpl<CreateBankAccountState>(this as CreateBankAccountState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBankAccountState&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,status,name);

@override
String toString() {
  return 'CreateBankAccountState(status: $status, name: $name)';
}


}

/// @nodoc
abstract mixin class $CreateBankAccountStateCopyWith<$Res>  {
  factory $CreateBankAccountStateCopyWith(CreateBankAccountState value, $Res Function(CreateBankAccountState) _then) = _$CreateBankAccountStateCopyWithImpl;
@useResult
$Res call({
 CreateBankAccountStatus status, String name
});




}
/// @nodoc
class _$CreateBankAccountStateCopyWithImpl<$Res>
    implements $CreateBankAccountStateCopyWith<$Res> {
  _$CreateBankAccountStateCopyWithImpl(this._self, this._then);

  final CreateBankAccountState _self;
  final $Res Function(CreateBankAccountState) _then;

/// Create a copy of CreateBankAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? name = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateBankAccountStatus,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateBankAccountState].
extension CreateBankAccountStatePatterns on CreateBankAccountState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateBankAccountState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBankAccountState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateBankAccountState value)  $default,){
final _that = this;
switch (_that) {
case _CreateBankAccountState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateBankAccountState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateBankAccountState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateBankAccountStatus status,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateBankAccountState() when $default != null:
return $default(_that.status,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateBankAccountStatus status,  String name)  $default,) {final _that = this;
switch (_that) {
case _CreateBankAccountState():
return $default(_that.status,_that.name);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateBankAccountStatus status,  String name)?  $default,) {final _that = this;
switch (_that) {
case _CreateBankAccountState() when $default != null:
return $default(_that.status,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _CreateBankAccountState implements CreateBankAccountState {
   _CreateBankAccountState({required this.status, required this.name});
  

@override final  CreateBankAccountStatus status;
@override final  String name;

/// Create a copy of CreateBankAccountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBankAccountStateCopyWith<_CreateBankAccountState> get copyWith => __$CreateBankAccountStateCopyWithImpl<_CreateBankAccountState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBankAccountState&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,status,name);

@override
String toString() {
  return 'CreateBankAccountState(status: $status, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreateBankAccountStateCopyWith<$Res> implements $CreateBankAccountStateCopyWith<$Res> {
  factory _$CreateBankAccountStateCopyWith(_CreateBankAccountState value, $Res Function(_CreateBankAccountState) _then) = __$CreateBankAccountStateCopyWithImpl;
@override @useResult
$Res call({
 CreateBankAccountStatus status, String name
});




}
/// @nodoc
class __$CreateBankAccountStateCopyWithImpl<$Res>
    implements _$CreateBankAccountStateCopyWith<$Res> {
  __$CreateBankAccountStateCopyWithImpl(this._self, this._then);

  final _CreateBankAccountState _self;
  final $Res Function(_CreateBankAccountState) _then;

/// Create a copy of CreateBankAccountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? name = null,}) {
  return _then(_CreateBankAccountState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateBankAccountStatus,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_accounts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BankAccountsState {

 BankAccountsStatus get status; List<ListBankAccountItemResponse> get items;
/// Create a copy of BankAccountsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountsStateCopyWith<BankAccountsState> get copyWith => _$BankAccountsStateCopyWithImpl<BankAccountsState>(this as BankAccountsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccountsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'BankAccountsState(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class $BankAccountsStateCopyWith<$Res>  {
  factory $BankAccountsStateCopyWith(BankAccountsState value, $Res Function(BankAccountsState) _then) = _$BankAccountsStateCopyWithImpl;
@useResult
$Res call({
 BankAccountsStatus status, List<ListBankAccountItemResponse> items
});




}
/// @nodoc
class _$BankAccountsStateCopyWithImpl<$Res>
    implements $BankAccountsStateCopyWith<$Res> {
  _$BankAccountsStateCopyWithImpl(this._self, this._then);

  final BankAccountsState _self;
  final $Res Function(BankAccountsState) _then;

/// Create a copy of BankAccountsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BankAccountsStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ListBankAccountItemResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [BankAccountsState].
extension BankAccountsStatePatterns on BankAccountsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccountsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccountsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccountsState value)  $default,){
final _that = this;
switch (_that) {
case _BankAccountsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccountsState value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccountsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BankAccountsStatus status,  List<ListBankAccountItemResponse> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccountsState() when $default != null:
return $default(_that.status,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BankAccountsStatus status,  List<ListBankAccountItemResponse> items)  $default,) {final _that = this;
switch (_that) {
case _BankAccountsState():
return $default(_that.status,_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BankAccountsStatus status,  List<ListBankAccountItemResponse> items)?  $default,) {final _that = this;
switch (_that) {
case _BankAccountsState() when $default != null:
return $default(_that.status,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _BankAccountsState implements BankAccountsState {
   _BankAccountsState({required this.status, required final  List<ListBankAccountItemResponse> items}): _items = items;
  

@override final  BankAccountsStatus status;
 final  List<ListBankAccountItemResponse> _items;
@override List<ListBankAccountItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of BankAccountsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountsStateCopyWith<_BankAccountsState> get copyWith => __$BankAccountsStateCopyWithImpl<_BankAccountsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccountsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'BankAccountsState(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class _$BankAccountsStateCopyWith<$Res> implements $BankAccountsStateCopyWith<$Res> {
  factory _$BankAccountsStateCopyWith(_BankAccountsState value, $Res Function(_BankAccountsState) _then) = __$BankAccountsStateCopyWithImpl;
@override @useResult
$Res call({
 BankAccountsStatus status, List<ListBankAccountItemResponse> items
});




}
/// @nodoc
class __$BankAccountsStateCopyWithImpl<$Res>
    implements _$BankAccountsStateCopyWith<$Res> {
  __$BankAccountsStateCopyWithImpl(this._self, this._then);

  final _BankAccountsState _self;
  final $Res Function(_BankAccountsState) _then;

/// Create a copy of BankAccountsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,}) {
  return _then(_BankAccountsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as BankAccountsStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ListBankAccountItemResponse>,
  ));
}


}

// dart format on

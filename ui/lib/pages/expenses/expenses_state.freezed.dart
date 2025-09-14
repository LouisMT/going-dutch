// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expenses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExpensesState {

 ExpensesStatus get status; List<ListExpenseItemResponse> get items;
/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpensesStateCopyWith<ExpensesState> get copyWith => _$ExpensesStateCopyWithImpl<ExpensesState>(this as ExpensesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpensesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ExpensesState(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class $ExpensesStateCopyWith<$Res>  {
  factory $ExpensesStateCopyWith(ExpensesState value, $Res Function(ExpensesState) _then) = _$ExpensesStateCopyWithImpl;
@useResult
$Res call({
 ExpensesStatus status, List<ListExpenseItemResponse> items
});




}
/// @nodoc
class _$ExpensesStateCopyWithImpl<$Res>
    implements $ExpensesStateCopyWith<$Res> {
  _$ExpensesStateCopyWithImpl(this._self, this._then);

  final ExpensesState _self;
  final $Res Function(ExpensesState) _then;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExpensesStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ListExpenseItemResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpensesState].
extension ExpensesStatePatterns on ExpensesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpensesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpensesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpensesState value)  $default,){
final _that = this;
switch (_that) {
case _ExpensesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpensesState value)?  $default,){
final _that = this;
switch (_that) {
case _ExpensesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ExpensesStatus status,  List<ListExpenseItemResponse> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpensesState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ExpensesStatus status,  List<ListExpenseItemResponse> items)  $default,) {final _that = this;
switch (_that) {
case _ExpensesState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ExpensesStatus status,  List<ListExpenseItemResponse> items)?  $default,) {final _that = this;
switch (_that) {
case _ExpensesState() when $default != null:
return $default(_that.status,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _ExpensesState implements ExpensesState {
   _ExpensesState({required this.status, required final  List<ListExpenseItemResponse> items}): _items = items;
  

@override final  ExpensesStatus status;
 final  List<ListExpenseItemResponse> _items;
@override List<ListExpenseItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpensesStateCopyWith<_ExpensesState> get copyWith => __$ExpensesStateCopyWithImpl<_ExpensesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpensesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ExpensesState(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ExpensesStateCopyWith<$Res> implements $ExpensesStateCopyWith<$Res> {
  factory _$ExpensesStateCopyWith(_ExpensesState value, $Res Function(_ExpensesState) _then) = __$ExpensesStateCopyWithImpl;
@override @useResult
$Res call({
 ExpensesStatus status, List<ListExpenseItemResponse> items
});




}
/// @nodoc
class __$ExpensesStateCopyWithImpl<$Res>
    implements _$ExpensesStateCopyWith<$Res> {
  __$ExpensesStateCopyWithImpl(this._self, this._then);

  final _ExpensesState _self;
  final $Res Function(_ExpensesState) _then;

/// Create a copy of ExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,}) {
  return _then(_ExpensesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ExpensesStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ListExpenseItemResponse>,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'split_rules_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplitRulesState {

 SplitRulesStatus get status; List<ListSplitRuleItemResponse> get items;
/// Create a copy of SplitRulesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplitRulesStateCopyWith<SplitRulesState> get copyWith => _$SplitRulesStateCopyWithImpl<SplitRulesState>(this as SplitRulesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplitRulesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'SplitRulesState(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class $SplitRulesStateCopyWith<$Res>  {
  factory $SplitRulesStateCopyWith(SplitRulesState value, $Res Function(SplitRulesState) _then) = _$SplitRulesStateCopyWithImpl;
@useResult
$Res call({
 SplitRulesStatus status, List<ListSplitRuleItemResponse> items
});




}
/// @nodoc
class _$SplitRulesStateCopyWithImpl<$Res>
    implements $SplitRulesStateCopyWith<$Res> {
  _$SplitRulesStateCopyWithImpl(this._self, this._then);

  final SplitRulesState _self;
  final $Res Function(SplitRulesState) _then;

/// Create a copy of SplitRulesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SplitRulesStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ListSplitRuleItemResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [SplitRulesState].
extension SplitRulesStatePatterns on SplitRulesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SplitRulesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SplitRulesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SplitRulesState value)  $default,){
final _that = this;
switch (_that) {
case _SplitRulesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SplitRulesState value)?  $default,){
final _that = this;
switch (_that) {
case _SplitRulesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SplitRulesStatus status,  List<ListSplitRuleItemResponse> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SplitRulesState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SplitRulesStatus status,  List<ListSplitRuleItemResponse> items)  $default,) {final _that = this;
switch (_that) {
case _SplitRulesState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SplitRulesStatus status,  List<ListSplitRuleItemResponse> items)?  $default,) {final _that = this;
switch (_that) {
case _SplitRulesState() when $default != null:
return $default(_that.status,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _SplitRulesState implements SplitRulesState {
   _SplitRulesState({required this.status, required final  List<ListSplitRuleItemResponse> items}): _items = items;
  

@override final  SplitRulesStatus status;
 final  List<ListSplitRuleItemResponse> _items;
@override List<ListSplitRuleItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of SplitRulesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplitRulesStateCopyWith<_SplitRulesState> get copyWith => __$SplitRulesStateCopyWithImpl<_SplitRulesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplitRulesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'SplitRulesState(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class _$SplitRulesStateCopyWith<$Res> implements $SplitRulesStateCopyWith<$Res> {
  factory _$SplitRulesStateCopyWith(_SplitRulesState value, $Res Function(_SplitRulesState) _then) = __$SplitRulesStateCopyWithImpl;
@override @useResult
$Res call({
 SplitRulesStatus status, List<ListSplitRuleItemResponse> items
});




}
/// @nodoc
class __$SplitRulesStateCopyWithImpl<$Res>
    implements _$SplitRulesStateCopyWith<$Res> {
  __$SplitRulesStateCopyWithImpl(this._self, this._then);

  final _SplitRulesState _self;
  final $Res Function(_SplitRulesState) _then;

/// Create a copy of SplitRulesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,}) {
  return _then(_SplitRulesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SplitRulesStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ListSplitRuleItemResponse>,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contributors_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContributorsState {

 ContributorsStatus get status; List<ListContributorItemResponse> get items;
/// Create a copy of ContributorsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContributorsStateCopyWith<ContributorsState> get copyWith => _$ContributorsStateCopyWithImpl<ContributorsState>(this as ContributorsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContributorsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ContributorsState(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class $ContributorsStateCopyWith<$Res>  {
  factory $ContributorsStateCopyWith(ContributorsState value, $Res Function(ContributorsState) _then) = _$ContributorsStateCopyWithImpl;
@useResult
$Res call({
 ContributorsStatus status, List<ListContributorItemResponse> items
});




}
/// @nodoc
class _$ContributorsStateCopyWithImpl<$Res>
    implements $ContributorsStateCopyWith<$Res> {
  _$ContributorsStateCopyWithImpl(this._self, this._then);

  final ContributorsState _self;
  final $Res Function(ContributorsState) _then;

/// Create a copy of ContributorsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContributorsStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ListContributorItemResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ContributorsState].
extension ContributorsStatePatterns on ContributorsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContributorsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContributorsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContributorsState value)  $default,){
final _that = this;
switch (_that) {
case _ContributorsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContributorsState value)?  $default,){
final _that = this;
switch (_that) {
case _ContributorsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ContributorsStatus status,  List<ListContributorItemResponse> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContributorsState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ContributorsStatus status,  List<ListContributorItemResponse> items)  $default,) {final _that = this;
switch (_that) {
case _ContributorsState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ContributorsStatus status,  List<ListContributorItemResponse> items)?  $default,) {final _that = this;
switch (_that) {
case _ContributorsState() when $default != null:
return $default(_that.status,_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _ContributorsState implements ContributorsState {
   _ContributorsState({required this.status, required final  List<ListContributorItemResponse> items}): _items = items;
  

@override final  ContributorsStatus status;
 final  List<ListContributorItemResponse> _items;
@override List<ListContributorItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ContributorsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContributorsStateCopyWith<_ContributorsState> get copyWith => __$ContributorsStateCopyWithImpl<_ContributorsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContributorsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ContributorsState(status: $status, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ContributorsStateCopyWith<$Res> implements $ContributorsStateCopyWith<$Res> {
  factory _$ContributorsStateCopyWith(_ContributorsState value, $Res Function(_ContributorsState) _then) = __$ContributorsStateCopyWithImpl;
@override @useResult
$Res call({
 ContributorsStatus status, List<ListContributorItemResponse> items
});




}
/// @nodoc
class __$ContributorsStateCopyWithImpl<$Res>
    implements _$ContributorsStateCopyWith<$Res> {
  __$ContributorsStateCopyWithImpl(this._self, this._then);

  final _ContributorsState _self;
  final $Res Function(_ContributorsState) _then;

/// Create a copy of ContributorsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,}) {
  return _then(_ContributorsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ContributorsStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ListContributorItemResponse>,
  ));
}


}

// dart format on

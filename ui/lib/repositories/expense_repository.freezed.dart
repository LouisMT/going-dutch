// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListExpenseItemResponse {

 int get id; String get name;
/// Create a copy of ListExpenseItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListExpenseItemResponseCopyWith<ListExpenseItemResponse> get copyWith => _$ListExpenseItemResponseCopyWithImpl<ListExpenseItemResponse>(this as ListExpenseItemResponse, _$identity);

  /// Serializes this ListExpenseItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListExpenseItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ListExpenseItemResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ListExpenseItemResponseCopyWith<$Res>  {
  factory $ListExpenseItemResponseCopyWith(ListExpenseItemResponse value, $Res Function(ListExpenseItemResponse) _then) = _$ListExpenseItemResponseCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$ListExpenseItemResponseCopyWithImpl<$Res>
    implements $ListExpenseItemResponseCopyWith<$Res> {
  _$ListExpenseItemResponseCopyWithImpl(this._self, this._then);

  final ListExpenseItemResponse _self;
  final $Res Function(ListExpenseItemResponse) _then;

/// Create a copy of ListExpenseItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ListExpenseItemResponse].
extension ListExpenseItemResponsePatterns on ListExpenseItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListExpenseItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListExpenseItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListExpenseItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListExpenseItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListExpenseItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListExpenseItemResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListExpenseItemResponse() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _ListExpenseItemResponse():
return $default(_that.id,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ListExpenseItemResponse() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListExpenseItemResponse implements ListExpenseItemResponse {
   _ListExpenseItemResponse({required this.id, required this.name});
  factory _ListExpenseItemResponse.fromJson(Map<String, dynamic> json) => _$ListExpenseItemResponseFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of ListExpenseItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListExpenseItemResponseCopyWith<_ListExpenseItemResponse> get copyWith => __$ListExpenseItemResponseCopyWithImpl<_ListExpenseItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListExpenseItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListExpenseItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ListExpenseItemResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ListExpenseItemResponseCopyWith<$Res> implements $ListExpenseItemResponseCopyWith<$Res> {
  factory _$ListExpenseItemResponseCopyWith(_ListExpenseItemResponse value, $Res Function(_ListExpenseItemResponse) _then) = __$ListExpenseItemResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$ListExpenseItemResponseCopyWithImpl<$Res>
    implements _$ListExpenseItemResponseCopyWith<$Res> {
  __$ListExpenseItemResponseCopyWithImpl(this._self, this._then);

  final _ListExpenseItemResponse _self;
  final $Res Function(_ListExpenseItemResponse) _then;

/// Create a copy of ListExpenseItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_ListExpenseItemResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ListExpensesResponse {

 List<ListExpenseItemResponse> get items;
/// Create a copy of ListExpensesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListExpensesResponseCopyWith<ListExpensesResponse> get copyWith => _$ListExpensesResponseCopyWithImpl<ListExpensesResponse>(this as ListExpensesResponse, _$identity);

  /// Serializes this ListExpensesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListExpensesResponse&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ListExpensesResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class $ListExpensesResponseCopyWith<$Res>  {
  factory $ListExpensesResponseCopyWith(ListExpensesResponse value, $Res Function(ListExpensesResponse) _then) = _$ListExpensesResponseCopyWithImpl;
@useResult
$Res call({
 List<ListExpenseItemResponse> items
});




}
/// @nodoc
class _$ListExpensesResponseCopyWithImpl<$Res>
    implements $ListExpensesResponseCopyWith<$Res> {
  _$ListExpensesResponseCopyWithImpl(this._self, this._then);

  final ListExpensesResponse _self;
  final $Res Function(ListExpensesResponse) _then;

/// Create a copy of ListExpensesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ListExpenseItemResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ListExpensesResponse].
extension ListExpensesResponsePatterns on ListExpensesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListExpensesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListExpensesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListExpensesResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListExpensesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListExpensesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListExpensesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ListExpenseItemResponse> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListExpensesResponse() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ListExpenseItemResponse> items)  $default,) {final _that = this;
switch (_that) {
case _ListExpensesResponse():
return $default(_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ListExpenseItemResponse> items)?  $default,) {final _that = this;
switch (_that) {
case _ListExpensesResponse() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListExpensesResponse implements ListExpensesResponse {
   _ListExpensesResponse({required final  List<ListExpenseItemResponse> items}): _items = items;
  factory _ListExpensesResponse.fromJson(Map<String, dynamic> json) => _$ListExpensesResponseFromJson(json);

 final  List<ListExpenseItemResponse> _items;
@override List<ListExpenseItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ListExpensesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListExpensesResponseCopyWith<_ListExpensesResponse> get copyWith => __$ListExpensesResponseCopyWithImpl<_ListExpensesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListExpensesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListExpensesResponse&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ListExpensesResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class _$ListExpensesResponseCopyWith<$Res> implements $ListExpensesResponseCopyWith<$Res> {
  factory _$ListExpensesResponseCopyWith(_ListExpensesResponse value, $Res Function(_ListExpensesResponse) _then) = __$ListExpensesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ListExpenseItemResponse> items
});




}
/// @nodoc
class __$ListExpensesResponseCopyWithImpl<$Res>
    implements _$ListExpensesResponseCopyWith<$Res> {
  __$ListExpensesResponseCopyWithImpl(this._self, this._then);

  final _ListExpensesResponse _self;
  final $Res Function(_ListExpensesResponse) _then;

/// Create a copy of ListExpensesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_ListExpensesResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ListExpenseItemResponse>,
  ));
}


}

// dart format on

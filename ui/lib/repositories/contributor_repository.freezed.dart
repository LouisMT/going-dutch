// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contributor_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListContributorItemResponse {

 int get id; String get name;
/// Create a copy of ListContributorItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListContributorItemResponseCopyWith<ListContributorItemResponse> get copyWith => _$ListContributorItemResponseCopyWithImpl<ListContributorItemResponse>(this as ListContributorItemResponse, _$identity);

  /// Serializes this ListContributorItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListContributorItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ListContributorItemResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ListContributorItemResponseCopyWith<$Res>  {
  factory $ListContributorItemResponseCopyWith(ListContributorItemResponse value, $Res Function(ListContributorItemResponse) _then) = _$ListContributorItemResponseCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$ListContributorItemResponseCopyWithImpl<$Res>
    implements $ListContributorItemResponseCopyWith<$Res> {
  _$ListContributorItemResponseCopyWithImpl(this._self, this._then);

  final ListContributorItemResponse _self;
  final $Res Function(ListContributorItemResponse) _then;

/// Create a copy of ListContributorItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ListContributorItemResponse].
extension ListContributorItemResponsePatterns on ListContributorItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListContributorItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListContributorItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListContributorItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListContributorItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListContributorItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListContributorItemResponse() when $default != null:
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
case _ListContributorItemResponse() when $default != null:
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
case _ListContributorItemResponse():
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
case _ListContributorItemResponse() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListContributorItemResponse implements ListContributorItemResponse {
   _ListContributorItemResponse({required this.id, required this.name});
  factory _ListContributorItemResponse.fromJson(Map<String, dynamic> json) => _$ListContributorItemResponseFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of ListContributorItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListContributorItemResponseCopyWith<_ListContributorItemResponse> get copyWith => __$ListContributorItemResponseCopyWithImpl<_ListContributorItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListContributorItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListContributorItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ListContributorItemResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ListContributorItemResponseCopyWith<$Res> implements $ListContributorItemResponseCopyWith<$Res> {
  factory _$ListContributorItemResponseCopyWith(_ListContributorItemResponse value, $Res Function(_ListContributorItemResponse) _then) = __$ListContributorItemResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$ListContributorItemResponseCopyWithImpl<$Res>
    implements _$ListContributorItemResponseCopyWith<$Res> {
  __$ListContributorItemResponseCopyWithImpl(this._self, this._then);

  final _ListContributorItemResponse _self;
  final $Res Function(_ListContributorItemResponse) _then;

/// Create a copy of ListContributorItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_ListContributorItemResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ListContributorsResponse {

 List<ListContributorItemResponse> get items;
/// Create a copy of ListContributorsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListContributorsResponseCopyWith<ListContributorsResponse> get copyWith => _$ListContributorsResponseCopyWithImpl<ListContributorsResponse>(this as ListContributorsResponse, _$identity);

  /// Serializes this ListContributorsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListContributorsResponse&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ListContributorsResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class $ListContributorsResponseCopyWith<$Res>  {
  factory $ListContributorsResponseCopyWith(ListContributorsResponse value, $Res Function(ListContributorsResponse) _then) = _$ListContributorsResponseCopyWithImpl;
@useResult
$Res call({
 List<ListContributorItemResponse> items
});




}
/// @nodoc
class _$ListContributorsResponseCopyWithImpl<$Res>
    implements $ListContributorsResponseCopyWith<$Res> {
  _$ListContributorsResponseCopyWithImpl(this._self, this._then);

  final ListContributorsResponse _self;
  final $Res Function(ListContributorsResponse) _then;

/// Create a copy of ListContributorsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ListContributorItemResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ListContributorsResponse].
extension ListContributorsResponsePatterns on ListContributorsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListContributorsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListContributorsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListContributorsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListContributorsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListContributorsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListContributorsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ListContributorItemResponse> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListContributorsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ListContributorItemResponse> items)  $default,) {final _that = this;
switch (_that) {
case _ListContributorsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ListContributorItemResponse> items)?  $default,) {final _that = this;
switch (_that) {
case _ListContributorsResponse() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListContributorsResponse implements ListContributorsResponse {
   _ListContributorsResponse({required final  List<ListContributorItemResponse> items}): _items = items;
  factory _ListContributorsResponse.fromJson(Map<String, dynamic> json) => _$ListContributorsResponseFromJson(json);

 final  List<ListContributorItemResponse> _items;
@override List<ListContributorItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ListContributorsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListContributorsResponseCopyWith<_ListContributorsResponse> get copyWith => __$ListContributorsResponseCopyWithImpl<_ListContributorsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListContributorsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListContributorsResponse&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ListContributorsResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class _$ListContributorsResponseCopyWith<$Res> implements $ListContributorsResponseCopyWith<$Res> {
  factory _$ListContributorsResponseCopyWith(_ListContributorsResponse value, $Res Function(_ListContributorsResponse) _then) = __$ListContributorsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ListContributorItemResponse> items
});




}
/// @nodoc
class __$ListContributorsResponseCopyWithImpl<$Res>
    implements _$ListContributorsResponseCopyWith<$Res> {
  __$ListContributorsResponseCopyWithImpl(this._self, this._then);

  final _ListContributorsResponse _self;
  final $Res Function(_ListContributorsResponse) _then;

/// Create a copy of ListContributorsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_ListContributorsResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ListContributorItemResponse>,
  ));
}


}


/// @nodoc
mixin _$CreateContributorRequest {

 String get name;
/// Create a copy of CreateContributorRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateContributorRequestCopyWith<CreateContributorRequest> get copyWith => _$CreateContributorRequestCopyWithImpl<CreateContributorRequest>(this as CreateContributorRequest, _$identity);

  /// Serializes this CreateContributorRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateContributorRequest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateContributorRequest(name: $name)';
}


}

/// @nodoc
abstract mixin class $CreateContributorRequestCopyWith<$Res>  {
  factory $CreateContributorRequestCopyWith(CreateContributorRequest value, $Res Function(CreateContributorRequest) _then) = _$CreateContributorRequestCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CreateContributorRequestCopyWithImpl<$Res>
    implements $CreateContributorRequestCopyWith<$Res> {
  _$CreateContributorRequestCopyWithImpl(this._self, this._then);

  final CreateContributorRequest _self;
  final $Res Function(CreateContributorRequest) _then;

/// Create a copy of CreateContributorRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateContributorRequest].
extension CreateContributorRequestPatterns on CreateContributorRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateContributorRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateContributorRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateContributorRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateContributorRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateContributorRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateContributorRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateContributorRequest() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _CreateContributorRequest():
return $default(_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _CreateContributorRequest() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateContributorRequest implements CreateContributorRequest {
   _CreateContributorRequest({required this.name});
  factory _CreateContributorRequest.fromJson(Map<String, dynamic> json) => _$CreateContributorRequestFromJson(json);

@override final  String name;

/// Create a copy of CreateContributorRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateContributorRequestCopyWith<_CreateContributorRequest> get copyWith => __$CreateContributorRequestCopyWithImpl<_CreateContributorRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateContributorRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateContributorRequest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateContributorRequest(name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreateContributorRequestCopyWith<$Res> implements $CreateContributorRequestCopyWith<$Res> {
  factory _$CreateContributorRequestCopyWith(_CreateContributorRequest value, $Res Function(_CreateContributorRequest) _then) = __$CreateContributorRequestCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$CreateContributorRequestCopyWithImpl<$Res>
    implements _$CreateContributorRequestCopyWith<$Res> {
  __$CreateContributorRequestCopyWithImpl(this._self, this._then);

  final _CreateContributorRequest _self;
  final $Res Function(_CreateContributorRequest) _then;

/// Create a copy of CreateContributorRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_CreateContributorRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreateContributorResponse {

 int get id;
/// Create a copy of CreateContributorResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateContributorResponseCopyWith<CreateContributorResponse> get copyWith => _$CreateContributorResponseCopyWithImpl<CreateContributorResponse>(this as CreateContributorResponse, _$identity);

  /// Serializes this CreateContributorResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateContributorResponse&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CreateContributorResponse(id: $id)';
}


}

/// @nodoc
abstract mixin class $CreateContributorResponseCopyWith<$Res>  {
  factory $CreateContributorResponseCopyWith(CreateContributorResponse value, $Res Function(CreateContributorResponse) _then) = _$CreateContributorResponseCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$CreateContributorResponseCopyWithImpl<$Res>
    implements $CreateContributorResponseCopyWith<$Res> {
  _$CreateContributorResponseCopyWithImpl(this._self, this._then);

  final CreateContributorResponse _self;
  final $Res Function(CreateContributorResponse) _then;

/// Create a copy of CreateContributorResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateContributorResponse].
extension CreateContributorResponsePatterns on CreateContributorResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateContributorResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateContributorResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateContributorResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateContributorResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateContributorResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateContributorResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateContributorResponse() when $default != null:
return $default(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id)  $default,) {final _that = this;
switch (_that) {
case _CreateContributorResponse():
return $default(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id)?  $default,) {final _that = this;
switch (_that) {
case _CreateContributorResponse() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateContributorResponse implements CreateContributorResponse {
   _CreateContributorResponse({required this.id});
  factory _CreateContributorResponse.fromJson(Map<String, dynamic> json) => _$CreateContributorResponseFromJson(json);

@override final  int id;

/// Create a copy of CreateContributorResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateContributorResponseCopyWith<_CreateContributorResponse> get copyWith => __$CreateContributorResponseCopyWithImpl<_CreateContributorResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateContributorResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateContributorResponse&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CreateContributorResponse(id: $id)';
}


}

/// @nodoc
abstract mixin class _$CreateContributorResponseCopyWith<$Res> implements $CreateContributorResponseCopyWith<$Res> {
  factory _$CreateContributorResponseCopyWith(_CreateContributorResponse value, $Res Function(_CreateContributorResponse) _then) = __$CreateContributorResponseCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$CreateContributorResponseCopyWithImpl<$Res>
    implements _$CreateContributorResponseCopyWith<$Res> {
  __$CreateContributorResponseCopyWithImpl(this._self, this._then);

  final _CreateContributorResponse _self;
  final $Res Function(_CreateContributorResponse) _then;

/// Create a copy of CreateContributorResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_CreateContributorResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

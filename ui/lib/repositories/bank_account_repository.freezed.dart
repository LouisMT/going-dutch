// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListBankAccountItemResponse {

 int get id; String get name;
/// Create a copy of ListBankAccountItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListBankAccountItemResponseCopyWith<ListBankAccountItemResponse> get copyWith => _$ListBankAccountItemResponseCopyWithImpl<ListBankAccountItemResponse>(this as ListBankAccountItemResponse, _$identity);

  /// Serializes this ListBankAccountItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListBankAccountItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ListBankAccountItemResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ListBankAccountItemResponseCopyWith<$Res>  {
  factory $ListBankAccountItemResponseCopyWith(ListBankAccountItemResponse value, $Res Function(ListBankAccountItemResponse) _then) = _$ListBankAccountItemResponseCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$ListBankAccountItemResponseCopyWithImpl<$Res>
    implements $ListBankAccountItemResponseCopyWith<$Res> {
  _$ListBankAccountItemResponseCopyWithImpl(this._self, this._then);

  final ListBankAccountItemResponse _self;
  final $Res Function(ListBankAccountItemResponse) _then;

/// Create a copy of ListBankAccountItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ListBankAccountItemResponse].
extension ListBankAccountItemResponsePatterns on ListBankAccountItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListBankAccountItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListBankAccountItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListBankAccountItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListBankAccountItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListBankAccountItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListBankAccountItemResponse() when $default != null:
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
case _ListBankAccountItemResponse() when $default != null:
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
case _ListBankAccountItemResponse():
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
case _ListBankAccountItemResponse() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListBankAccountItemResponse implements ListBankAccountItemResponse {
   _ListBankAccountItemResponse({required this.id, required this.name});
  factory _ListBankAccountItemResponse.fromJson(Map<String, dynamic> json) => _$ListBankAccountItemResponseFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of ListBankAccountItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListBankAccountItemResponseCopyWith<_ListBankAccountItemResponse> get copyWith => __$ListBankAccountItemResponseCopyWithImpl<_ListBankAccountItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListBankAccountItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListBankAccountItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ListBankAccountItemResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ListBankAccountItemResponseCopyWith<$Res> implements $ListBankAccountItemResponseCopyWith<$Res> {
  factory _$ListBankAccountItemResponseCopyWith(_ListBankAccountItemResponse value, $Res Function(_ListBankAccountItemResponse) _then) = __$ListBankAccountItemResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$ListBankAccountItemResponseCopyWithImpl<$Res>
    implements _$ListBankAccountItemResponseCopyWith<$Res> {
  __$ListBankAccountItemResponseCopyWithImpl(this._self, this._then);

  final _ListBankAccountItemResponse _self;
  final $Res Function(_ListBankAccountItemResponse) _then;

/// Create a copy of ListBankAccountItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_ListBankAccountItemResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ListBankAccountsResponse {

 List<ListBankAccountItemResponse> get items;
/// Create a copy of ListBankAccountsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListBankAccountsResponseCopyWith<ListBankAccountsResponse> get copyWith => _$ListBankAccountsResponseCopyWithImpl<ListBankAccountsResponse>(this as ListBankAccountsResponse, _$identity);

  /// Serializes this ListBankAccountsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListBankAccountsResponse&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ListBankAccountsResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class $ListBankAccountsResponseCopyWith<$Res>  {
  factory $ListBankAccountsResponseCopyWith(ListBankAccountsResponse value, $Res Function(ListBankAccountsResponse) _then) = _$ListBankAccountsResponseCopyWithImpl;
@useResult
$Res call({
 List<ListBankAccountItemResponse> items
});




}
/// @nodoc
class _$ListBankAccountsResponseCopyWithImpl<$Res>
    implements $ListBankAccountsResponseCopyWith<$Res> {
  _$ListBankAccountsResponseCopyWithImpl(this._self, this._then);

  final ListBankAccountsResponse _self;
  final $Res Function(ListBankAccountsResponse) _then;

/// Create a copy of ListBankAccountsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ListBankAccountItemResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ListBankAccountsResponse].
extension ListBankAccountsResponsePatterns on ListBankAccountsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListBankAccountsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListBankAccountsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListBankAccountsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListBankAccountsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListBankAccountsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListBankAccountsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ListBankAccountItemResponse> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListBankAccountsResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ListBankAccountItemResponse> items)  $default,) {final _that = this;
switch (_that) {
case _ListBankAccountsResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ListBankAccountItemResponse> items)?  $default,) {final _that = this;
switch (_that) {
case _ListBankAccountsResponse() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListBankAccountsResponse implements ListBankAccountsResponse {
   _ListBankAccountsResponse({required final  List<ListBankAccountItemResponse> items}): _items = items;
  factory _ListBankAccountsResponse.fromJson(Map<String, dynamic> json) => _$ListBankAccountsResponseFromJson(json);

 final  List<ListBankAccountItemResponse> _items;
@override List<ListBankAccountItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ListBankAccountsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListBankAccountsResponseCopyWith<_ListBankAccountsResponse> get copyWith => __$ListBankAccountsResponseCopyWithImpl<_ListBankAccountsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListBankAccountsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListBankAccountsResponse&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ListBankAccountsResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class _$ListBankAccountsResponseCopyWith<$Res> implements $ListBankAccountsResponseCopyWith<$Res> {
  factory _$ListBankAccountsResponseCopyWith(_ListBankAccountsResponse value, $Res Function(_ListBankAccountsResponse) _then) = __$ListBankAccountsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ListBankAccountItemResponse> items
});




}
/// @nodoc
class __$ListBankAccountsResponseCopyWithImpl<$Res>
    implements _$ListBankAccountsResponseCopyWith<$Res> {
  __$ListBankAccountsResponseCopyWithImpl(this._self, this._then);

  final _ListBankAccountsResponse _self;
  final $Res Function(_ListBankAccountsResponse) _then;

/// Create a copy of ListBankAccountsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_ListBankAccountsResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ListBankAccountItemResponse>,
  ));
}


}


/// @nodoc
mixin _$CreateBankAccountRequest {

 String get name;
/// Create a copy of CreateBankAccountRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBankAccountRequestCopyWith<CreateBankAccountRequest> get copyWith => _$CreateBankAccountRequestCopyWithImpl<CreateBankAccountRequest>(this as CreateBankAccountRequest, _$identity);

  /// Serializes this CreateBankAccountRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBankAccountRequest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateBankAccountRequest(name: $name)';
}


}

/// @nodoc
abstract mixin class $CreateBankAccountRequestCopyWith<$Res>  {
  factory $CreateBankAccountRequestCopyWith(CreateBankAccountRequest value, $Res Function(CreateBankAccountRequest) _then) = _$CreateBankAccountRequestCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CreateBankAccountRequestCopyWithImpl<$Res>
    implements $CreateBankAccountRequestCopyWith<$Res> {
  _$CreateBankAccountRequestCopyWithImpl(this._self, this._then);

  final CreateBankAccountRequest _self;
  final $Res Function(CreateBankAccountRequest) _then;

/// Create a copy of CreateBankAccountRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateBankAccountRequest].
extension CreateBankAccountRequestPatterns on CreateBankAccountRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateBankAccountRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBankAccountRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateBankAccountRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateBankAccountRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateBankAccountRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateBankAccountRequest() when $default != null:
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
case _CreateBankAccountRequest() when $default != null:
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
case _CreateBankAccountRequest():
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
case _CreateBankAccountRequest() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateBankAccountRequest implements CreateBankAccountRequest {
   _CreateBankAccountRequest({required this.name});
  factory _CreateBankAccountRequest.fromJson(Map<String, dynamic> json) => _$CreateBankAccountRequestFromJson(json);

@override final  String name;

/// Create a copy of CreateBankAccountRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBankAccountRequestCopyWith<_CreateBankAccountRequest> get copyWith => __$CreateBankAccountRequestCopyWithImpl<_CreateBankAccountRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateBankAccountRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBankAccountRequest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateBankAccountRequest(name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreateBankAccountRequestCopyWith<$Res> implements $CreateBankAccountRequestCopyWith<$Res> {
  factory _$CreateBankAccountRequestCopyWith(_CreateBankAccountRequest value, $Res Function(_CreateBankAccountRequest) _then) = __$CreateBankAccountRequestCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$CreateBankAccountRequestCopyWithImpl<$Res>
    implements _$CreateBankAccountRequestCopyWith<$Res> {
  __$CreateBankAccountRequestCopyWithImpl(this._self, this._then);

  final _CreateBankAccountRequest _self;
  final $Res Function(_CreateBankAccountRequest) _then;

/// Create a copy of CreateBankAccountRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_CreateBankAccountRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CreateBankAccountResponse {

 int get id;
/// Create a copy of CreateBankAccountResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateBankAccountResponseCopyWith<CreateBankAccountResponse> get copyWith => _$CreateBankAccountResponseCopyWithImpl<CreateBankAccountResponse>(this as CreateBankAccountResponse, _$identity);

  /// Serializes this CreateBankAccountResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateBankAccountResponse&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CreateBankAccountResponse(id: $id)';
}


}

/// @nodoc
abstract mixin class $CreateBankAccountResponseCopyWith<$Res>  {
  factory $CreateBankAccountResponseCopyWith(CreateBankAccountResponse value, $Res Function(CreateBankAccountResponse) _then) = _$CreateBankAccountResponseCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$CreateBankAccountResponseCopyWithImpl<$Res>
    implements $CreateBankAccountResponseCopyWith<$Res> {
  _$CreateBankAccountResponseCopyWithImpl(this._self, this._then);

  final CreateBankAccountResponse _self;
  final $Res Function(CreateBankAccountResponse) _then;

/// Create a copy of CreateBankAccountResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateBankAccountResponse].
extension CreateBankAccountResponsePatterns on CreateBankAccountResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateBankAccountResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateBankAccountResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateBankAccountResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateBankAccountResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateBankAccountResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateBankAccountResponse() when $default != null:
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
case _CreateBankAccountResponse() when $default != null:
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
case _CreateBankAccountResponse():
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
case _CreateBankAccountResponse() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateBankAccountResponse implements CreateBankAccountResponse {
   _CreateBankAccountResponse({required this.id});
  factory _CreateBankAccountResponse.fromJson(Map<String, dynamic> json) => _$CreateBankAccountResponseFromJson(json);

@override final  int id;

/// Create a copy of CreateBankAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateBankAccountResponseCopyWith<_CreateBankAccountResponse> get copyWith => __$CreateBankAccountResponseCopyWithImpl<_CreateBankAccountResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateBankAccountResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateBankAccountResponse&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CreateBankAccountResponse(id: $id)';
}


}

/// @nodoc
abstract mixin class _$CreateBankAccountResponseCopyWith<$Res> implements $CreateBankAccountResponseCopyWith<$Res> {
  factory _$CreateBankAccountResponseCopyWith(_CreateBankAccountResponse value, $Res Function(_CreateBankAccountResponse) _then) = __$CreateBankAccountResponseCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$CreateBankAccountResponseCopyWithImpl<$Res>
    implements _$CreateBankAccountResponseCopyWith<$Res> {
  __$CreateBankAccountResponseCopyWithImpl(this._self, this._then);

  final _CreateBankAccountResponse _self;
  final $Res Function(_CreateBankAccountResponse) _then;

/// Create a copy of CreateBankAccountResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_CreateBankAccountResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

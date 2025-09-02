// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'split_rule_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListSplitRuleItemResponse {

 int get id; String get name;
/// Create a copy of ListSplitRuleItemResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListSplitRuleItemResponseCopyWith<ListSplitRuleItemResponse> get copyWith => _$ListSplitRuleItemResponseCopyWithImpl<ListSplitRuleItemResponse>(this as ListSplitRuleItemResponse, _$identity);

  /// Serializes this ListSplitRuleItemResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListSplitRuleItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ListSplitRuleItemResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ListSplitRuleItemResponseCopyWith<$Res>  {
  factory $ListSplitRuleItemResponseCopyWith(ListSplitRuleItemResponse value, $Res Function(ListSplitRuleItemResponse) _then) = _$ListSplitRuleItemResponseCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$ListSplitRuleItemResponseCopyWithImpl<$Res>
    implements $ListSplitRuleItemResponseCopyWith<$Res> {
  _$ListSplitRuleItemResponseCopyWithImpl(this._self, this._then);

  final ListSplitRuleItemResponse _self;
  final $Res Function(ListSplitRuleItemResponse) _then;

/// Create a copy of ListSplitRuleItemResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ListSplitRuleItemResponse].
extension ListSplitRuleItemResponsePatterns on ListSplitRuleItemResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListSplitRuleItemResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListSplitRuleItemResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListSplitRuleItemResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListSplitRuleItemResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListSplitRuleItemResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListSplitRuleItemResponse() when $default != null:
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
case _ListSplitRuleItemResponse() when $default != null:
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
case _ListSplitRuleItemResponse():
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
case _ListSplitRuleItemResponse() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListSplitRuleItemResponse implements ListSplitRuleItemResponse {
   _ListSplitRuleItemResponse({required this.id, required this.name});
  factory _ListSplitRuleItemResponse.fromJson(Map<String, dynamic> json) => _$ListSplitRuleItemResponseFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of ListSplitRuleItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListSplitRuleItemResponseCopyWith<_ListSplitRuleItemResponse> get copyWith => __$ListSplitRuleItemResponseCopyWithImpl<_ListSplitRuleItemResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListSplitRuleItemResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListSplitRuleItemResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ListSplitRuleItemResponse(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ListSplitRuleItemResponseCopyWith<$Res> implements $ListSplitRuleItemResponseCopyWith<$Res> {
  factory _$ListSplitRuleItemResponseCopyWith(_ListSplitRuleItemResponse value, $Res Function(_ListSplitRuleItemResponse) _then) = __$ListSplitRuleItemResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$ListSplitRuleItemResponseCopyWithImpl<$Res>
    implements _$ListSplitRuleItemResponseCopyWith<$Res> {
  __$ListSplitRuleItemResponseCopyWithImpl(this._self, this._then);

  final _ListSplitRuleItemResponse _self;
  final $Res Function(_ListSplitRuleItemResponse) _then;

/// Create a copy of ListSplitRuleItemResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_ListSplitRuleItemResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ListSplitRulesResponse {

 List<ListSplitRuleItemResponse> get items;
/// Create a copy of ListSplitRulesResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListSplitRulesResponseCopyWith<ListSplitRulesResponse> get copyWith => _$ListSplitRulesResponseCopyWithImpl<ListSplitRulesResponse>(this as ListSplitRulesResponse, _$identity);

  /// Serializes this ListSplitRulesResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListSplitRulesResponse&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ListSplitRulesResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class $ListSplitRulesResponseCopyWith<$Res>  {
  factory $ListSplitRulesResponseCopyWith(ListSplitRulesResponse value, $Res Function(ListSplitRulesResponse) _then) = _$ListSplitRulesResponseCopyWithImpl;
@useResult
$Res call({
 List<ListSplitRuleItemResponse> items
});




}
/// @nodoc
class _$ListSplitRulesResponseCopyWithImpl<$Res>
    implements $ListSplitRulesResponseCopyWith<$Res> {
  _$ListSplitRulesResponseCopyWithImpl(this._self, this._then);

  final ListSplitRulesResponse _self;
  final $Res Function(ListSplitRulesResponse) _then;

/// Create a copy of ListSplitRulesResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ListSplitRuleItemResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ListSplitRulesResponse].
extension ListSplitRulesResponsePatterns on ListSplitRulesResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListSplitRulesResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListSplitRulesResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListSplitRulesResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListSplitRulesResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListSplitRulesResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListSplitRulesResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ListSplitRuleItemResponse> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListSplitRulesResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ListSplitRuleItemResponse> items)  $default,) {final _that = this;
switch (_that) {
case _ListSplitRulesResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ListSplitRuleItemResponse> items)?  $default,) {final _that = this;
switch (_that) {
case _ListSplitRulesResponse() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListSplitRulesResponse implements ListSplitRulesResponse {
   _ListSplitRulesResponse({required final  List<ListSplitRuleItemResponse> items}): _items = items;
  factory _ListSplitRulesResponse.fromJson(Map<String, dynamic> json) => _$ListSplitRulesResponseFromJson(json);

 final  List<ListSplitRuleItemResponse> _items;
@override List<ListSplitRuleItemResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ListSplitRulesResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListSplitRulesResponseCopyWith<_ListSplitRulesResponse> get copyWith => __$ListSplitRulesResponseCopyWithImpl<_ListSplitRulesResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListSplitRulesResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListSplitRulesResponse&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ListSplitRulesResponse(items: $items)';
}


}

/// @nodoc
abstract mixin class _$ListSplitRulesResponseCopyWith<$Res> implements $ListSplitRulesResponseCopyWith<$Res> {
  factory _$ListSplitRulesResponseCopyWith(_ListSplitRulesResponse value, $Res Function(_ListSplitRulesResponse) _then) = __$ListSplitRulesResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ListSplitRuleItemResponse> items
});




}
/// @nodoc
class __$ListSplitRulesResponseCopyWithImpl<$Res>
    implements _$ListSplitRulesResponseCopyWith<$Res> {
  __$ListSplitRulesResponseCopyWithImpl(this._self, this._then);

  final _ListSplitRulesResponse _self;
  final $Res Function(_ListSplitRulesResponse) _then;

/// Create a copy of ListSplitRulesResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_ListSplitRulesResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ListSplitRuleItemResponse>,
  ));
}


}


/// @nodoc
mixin _$CreateSplitRuleRequest {

 String get name; List<CreateSplitRuleEntryRequest> get entries;
/// Create a copy of CreateSplitRuleRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSplitRuleRequestCopyWith<CreateSplitRuleRequest> get copyWith => _$CreateSplitRuleRequestCopyWithImpl<CreateSplitRuleRequest>(this as CreateSplitRuleRequest, _$identity);

  /// Serializes this CreateSplitRuleRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSplitRuleRequest&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.entries, entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(entries));

@override
String toString() {
  return 'CreateSplitRuleRequest(name: $name, entries: $entries)';
}


}

/// @nodoc
abstract mixin class $CreateSplitRuleRequestCopyWith<$Res>  {
  factory $CreateSplitRuleRequestCopyWith(CreateSplitRuleRequest value, $Res Function(CreateSplitRuleRequest) _then) = _$CreateSplitRuleRequestCopyWithImpl;
@useResult
$Res call({
 String name, List<CreateSplitRuleEntryRequest> entries
});




}
/// @nodoc
class _$CreateSplitRuleRequestCopyWithImpl<$Res>
    implements $CreateSplitRuleRequestCopyWith<$Res> {
  _$CreateSplitRuleRequestCopyWithImpl(this._self, this._then);

  final CreateSplitRuleRequest _self;
  final $Res Function(CreateSplitRuleRequest) _then;

/// Create a copy of CreateSplitRuleRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? entries = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<CreateSplitRuleEntryRequest>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSplitRuleRequest].
extension CreateSplitRuleRequestPatterns on CreateSplitRuleRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSplitRuleRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSplitRuleRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSplitRuleRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateSplitRuleRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSplitRuleRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSplitRuleRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  List<CreateSplitRuleEntryRequest> entries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSplitRuleRequest() when $default != null:
return $default(_that.name,_that.entries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  List<CreateSplitRuleEntryRequest> entries)  $default,) {final _that = this;
switch (_that) {
case _CreateSplitRuleRequest():
return $default(_that.name,_that.entries);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  List<CreateSplitRuleEntryRequest> entries)?  $default,) {final _that = this;
switch (_that) {
case _CreateSplitRuleRequest() when $default != null:
return $default(_that.name,_that.entries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSplitRuleRequest implements CreateSplitRuleRequest {
   _CreateSplitRuleRequest({required this.name, required final  List<CreateSplitRuleEntryRequest> entries}): _entries = entries;
  factory _CreateSplitRuleRequest.fromJson(Map<String, dynamic> json) => _$CreateSplitRuleRequestFromJson(json);

@override final  String name;
 final  List<CreateSplitRuleEntryRequest> _entries;
@override List<CreateSplitRuleEntryRequest> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}


/// Create a copy of CreateSplitRuleRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSplitRuleRequestCopyWith<_CreateSplitRuleRequest> get copyWith => __$CreateSplitRuleRequestCopyWithImpl<_CreateSplitRuleRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSplitRuleRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSplitRuleRequest&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._entries, _entries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_entries));

@override
String toString() {
  return 'CreateSplitRuleRequest(name: $name, entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$CreateSplitRuleRequestCopyWith<$Res> implements $CreateSplitRuleRequestCopyWith<$Res> {
  factory _$CreateSplitRuleRequestCopyWith(_CreateSplitRuleRequest value, $Res Function(_CreateSplitRuleRequest) _then) = __$CreateSplitRuleRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, List<CreateSplitRuleEntryRequest> entries
});




}
/// @nodoc
class __$CreateSplitRuleRequestCopyWithImpl<$Res>
    implements _$CreateSplitRuleRequestCopyWith<$Res> {
  __$CreateSplitRuleRequestCopyWithImpl(this._self, this._then);

  final _CreateSplitRuleRequest _self;
  final $Res Function(_CreateSplitRuleRequest) _then;

/// Create a copy of CreateSplitRuleRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? entries = null,}) {
  return _then(_CreateSplitRuleRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<CreateSplitRuleEntryRequest>,
  ));
}


}


/// @nodoc
mixin _$CreateSplitRuleEntryRequest {

 int get contributorId; double get share;
/// Create a copy of CreateSplitRuleEntryRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSplitRuleEntryRequestCopyWith<CreateSplitRuleEntryRequest> get copyWith => _$CreateSplitRuleEntryRequestCopyWithImpl<CreateSplitRuleEntryRequest>(this as CreateSplitRuleEntryRequest, _$identity);

  /// Serializes this CreateSplitRuleEntryRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSplitRuleEntryRequest&&(identical(other.contributorId, contributorId) || other.contributorId == contributorId)&&(identical(other.share, share) || other.share == share));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contributorId,share);

@override
String toString() {
  return 'CreateSplitRuleEntryRequest(contributorId: $contributorId, share: $share)';
}


}

/// @nodoc
abstract mixin class $CreateSplitRuleEntryRequestCopyWith<$Res>  {
  factory $CreateSplitRuleEntryRequestCopyWith(CreateSplitRuleEntryRequest value, $Res Function(CreateSplitRuleEntryRequest) _then) = _$CreateSplitRuleEntryRequestCopyWithImpl;
@useResult
$Res call({
 int contributorId, double share
});




}
/// @nodoc
class _$CreateSplitRuleEntryRequestCopyWithImpl<$Res>
    implements $CreateSplitRuleEntryRequestCopyWith<$Res> {
  _$CreateSplitRuleEntryRequestCopyWithImpl(this._self, this._then);

  final CreateSplitRuleEntryRequest _self;
  final $Res Function(CreateSplitRuleEntryRequest) _then;

/// Create a copy of CreateSplitRuleEntryRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contributorId = null,Object? share = null,}) {
  return _then(_self.copyWith(
contributorId: null == contributorId ? _self.contributorId : contributorId // ignore: cast_nullable_to_non_nullable
as int,share: null == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSplitRuleEntryRequest].
extension CreateSplitRuleEntryRequestPatterns on CreateSplitRuleEntryRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSplitRuleEntryRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSplitRuleEntryRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSplitRuleEntryRequest value)  $default,){
final _that = this;
switch (_that) {
case _CreateSplitRuleEntryRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSplitRuleEntryRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSplitRuleEntryRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int contributorId,  double share)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSplitRuleEntryRequest() when $default != null:
return $default(_that.contributorId,_that.share);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int contributorId,  double share)  $default,) {final _that = this;
switch (_that) {
case _CreateSplitRuleEntryRequest():
return $default(_that.contributorId,_that.share);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int contributorId,  double share)?  $default,) {final _that = this;
switch (_that) {
case _CreateSplitRuleEntryRequest() when $default != null:
return $default(_that.contributorId,_that.share);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSplitRuleEntryRequest implements CreateSplitRuleEntryRequest {
   _CreateSplitRuleEntryRequest({required this.contributorId, required this.share});
  factory _CreateSplitRuleEntryRequest.fromJson(Map<String, dynamic> json) => _$CreateSplitRuleEntryRequestFromJson(json);

@override final  int contributorId;
@override final  double share;

/// Create a copy of CreateSplitRuleEntryRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSplitRuleEntryRequestCopyWith<_CreateSplitRuleEntryRequest> get copyWith => __$CreateSplitRuleEntryRequestCopyWithImpl<_CreateSplitRuleEntryRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSplitRuleEntryRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSplitRuleEntryRequest&&(identical(other.contributorId, contributorId) || other.contributorId == contributorId)&&(identical(other.share, share) || other.share == share));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contributorId,share);

@override
String toString() {
  return 'CreateSplitRuleEntryRequest(contributorId: $contributorId, share: $share)';
}


}

/// @nodoc
abstract mixin class _$CreateSplitRuleEntryRequestCopyWith<$Res> implements $CreateSplitRuleEntryRequestCopyWith<$Res> {
  factory _$CreateSplitRuleEntryRequestCopyWith(_CreateSplitRuleEntryRequest value, $Res Function(_CreateSplitRuleEntryRequest) _then) = __$CreateSplitRuleEntryRequestCopyWithImpl;
@override @useResult
$Res call({
 int contributorId, double share
});




}
/// @nodoc
class __$CreateSplitRuleEntryRequestCopyWithImpl<$Res>
    implements _$CreateSplitRuleEntryRequestCopyWith<$Res> {
  __$CreateSplitRuleEntryRequestCopyWithImpl(this._self, this._then);

  final _CreateSplitRuleEntryRequest _self;
  final $Res Function(_CreateSplitRuleEntryRequest) _then;

/// Create a copy of CreateSplitRuleEntryRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contributorId = null,Object? share = null,}) {
  return _then(_CreateSplitRuleEntryRequest(
contributorId: null == contributorId ? _self.contributorId : contributorId // ignore: cast_nullable_to_non_nullable
as int,share: null == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CreateSplitRuleResponse {

 int get id;
/// Create a copy of CreateSplitRuleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSplitRuleResponseCopyWith<CreateSplitRuleResponse> get copyWith => _$CreateSplitRuleResponseCopyWithImpl<CreateSplitRuleResponse>(this as CreateSplitRuleResponse, _$identity);

  /// Serializes this CreateSplitRuleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSplitRuleResponse&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CreateSplitRuleResponse(id: $id)';
}


}

/// @nodoc
abstract mixin class $CreateSplitRuleResponseCopyWith<$Res>  {
  factory $CreateSplitRuleResponseCopyWith(CreateSplitRuleResponse value, $Res Function(CreateSplitRuleResponse) _then) = _$CreateSplitRuleResponseCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$CreateSplitRuleResponseCopyWithImpl<$Res>
    implements $CreateSplitRuleResponseCopyWith<$Res> {
  _$CreateSplitRuleResponseCopyWithImpl(this._self, this._then);

  final CreateSplitRuleResponse _self;
  final $Res Function(CreateSplitRuleResponse) _then;

/// Create a copy of CreateSplitRuleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSplitRuleResponse].
extension CreateSplitRuleResponsePatterns on CreateSplitRuleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSplitRuleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSplitRuleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSplitRuleResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateSplitRuleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSplitRuleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSplitRuleResponse() when $default != null:
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
case _CreateSplitRuleResponse() when $default != null:
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
case _CreateSplitRuleResponse():
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
case _CreateSplitRuleResponse() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSplitRuleResponse implements CreateSplitRuleResponse {
   _CreateSplitRuleResponse({required this.id});
  factory _CreateSplitRuleResponse.fromJson(Map<String, dynamic> json) => _$CreateSplitRuleResponseFromJson(json);

@override final  int id;

/// Create a copy of CreateSplitRuleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSplitRuleResponseCopyWith<_CreateSplitRuleResponse> get copyWith => __$CreateSplitRuleResponseCopyWithImpl<_CreateSplitRuleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSplitRuleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSplitRuleResponse&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CreateSplitRuleResponse(id: $id)';
}


}

/// @nodoc
abstract mixin class _$CreateSplitRuleResponseCopyWith<$Res> implements $CreateSplitRuleResponseCopyWith<$Res> {
  factory _$CreateSplitRuleResponseCopyWith(_CreateSplitRuleResponse value, $Res Function(_CreateSplitRuleResponse) _then) = __$CreateSplitRuleResponseCopyWithImpl;
@override @useResult
$Res call({
 int id
});




}
/// @nodoc
class __$CreateSplitRuleResponseCopyWithImpl<$Res>
    implements _$CreateSplitRuleResponseCopyWith<$Res> {
  __$CreateSplitRuleResponseCopyWithImpl(this._self, this._then);

  final _CreateSplitRuleResponse _self;
  final $Res Function(_CreateSplitRuleResponse) _then;

/// Create a copy of CreateSplitRuleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_CreateSplitRuleResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

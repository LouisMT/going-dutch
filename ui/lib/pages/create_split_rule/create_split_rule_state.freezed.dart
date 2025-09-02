// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_split_rule_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateSplitRuleState {

 CreateSplitRuleStatus get status; List<ListContributorItemResponse> get contributors; String get name; List<Entry> get entries;
/// Create a copy of CreateSplitRuleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSplitRuleStateCopyWith<CreateSplitRuleState> get copyWith => _$CreateSplitRuleStateCopyWithImpl<CreateSplitRuleState>(this as CreateSplitRuleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSplitRuleState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.contributors, contributors)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.entries, entries));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(contributors),name,const DeepCollectionEquality().hash(entries));

@override
String toString() {
  return 'CreateSplitRuleState(status: $status, contributors: $contributors, name: $name, entries: $entries)';
}


}

/// @nodoc
abstract mixin class $CreateSplitRuleStateCopyWith<$Res>  {
  factory $CreateSplitRuleStateCopyWith(CreateSplitRuleState value, $Res Function(CreateSplitRuleState) _then) = _$CreateSplitRuleStateCopyWithImpl;
@useResult
$Res call({
 CreateSplitRuleStatus status, List<ListContributorItemResponse> contributors, String name, List<Entry> entries
});




}
/// @nodoc
class _$CreateSplitRuleStateCopyWithImpl<$Res>
    implements $CreateSplitRuleStateCopyWith<$Res> {
  _$CreateSplitRuleStateCopyWithImpl(this._self, this._then);

  final CreateSplitRuleState _self;
  final $Res Function(CreateSplitRuleState) _then;

/// Create a copy of CreateSplitRuleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? contributors = null,Object? name = null,Object? entries = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateSplitRuleStatus,contributors: null == contributors ? _self.contributors : contributors // ignore: cast_nullable_to_non_nullable
as List<ListContributorItemResponse>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<Entry>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSplitRuleState].
extension CreateSplitRuleStatePatterns on CreateSplitRuleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSplitRuleState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSplitRuleState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSplitRuleState value)  $default,){
final _that = this;
switch (_that) {
case _CreateSplitRuleState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSplitRuleState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSplitRuleState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateSplitRuleStatus status,  List<ListContributorItemResponse> contributors,  String name,  List<Entry> entries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSplitRuleState() when $default != null:
return $default(_that.status,_that.contributors,_that.name,_that.entries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateSplitRuleStatus status,  List<ListContributorItemResponse> contributors,  String name,  List<Entry> entries)  $default,) {final _that = this;
switch (_that) {
case _CreateSplitRuleState():
return $default(_that.status,_that.contributors,_that.name,_that.entries);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateSplitRuleStatus status,  List<ListContributorItemResponse> contributors,  String name,  List<Entry> entries)?  $default,) {final _that = this;
switch (_that) {
case _CreateSplitRuleState() when $default != null:
return $default(_that.status,_that.contributors,_that.name,_that.entries);case _:
  return null;

}
}

}

/// @nodoc


class _CreateSplitRuleState implements CreateSplitRuleState {
   _CreateSplitRuleState({required this.status, required final  List<ListContributorItemResponse> contributors, required this.name, required final  List<Entry> entries}): _contributors = contributors,_entries = entries;
  

@override final  CreateSplitRuleStatus status;
 final  List<ListContributorItemResponse> _contributors;
@override List<ListContributorItemResponse> get contributors {
  if (_contributors is EqualUnmodifiableListView) return _contributors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contributors);
}

@override final  String name;
 final  List<Entry> _entries;
@override List<Entry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}


/// Create a copy of CreateSplitRuleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSplitRuleStateCopyWith<_CreateSplitRuleState> get copyWith => __$CreateSplitRuleStateCopyWithImpl<_CreateSplitRuleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSplitRuleState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._contributors, _contributors)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._entries, _entries));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_contributors),name,const DeepCollectionEquality().hash(_entries));

@override
String toString() {
  return 'CreateSplitRuleState(status: $status, contributors: $contributors, name: $name, entries: $entries)';
}


}

/// @nodoc
abstract mixin class _$CreateSplitRuleStateCopyWith<$Res> implements $CreateSplitRuleStateCopyWith<$Res> {
  factory _$CreateSplitRuleStateCopyWith(_CreateSplitRuleState value, $Res Function(_CreateSplitRuleState) _then) = __$CreateSplitRuleStateCopyWithImpl;
@override @useResult
$Res call({
 CreateSplitRuleStatus status, List<ListContributorItemResponse> contributors, String name, List<Entry> entries
});




}
/// @nodoc
class __$CreateSplitRuleStateCopyWithImpl<$Res>
    implements _$CreateSplitRuleStateCopyWith<$Res> {
  __$CreateSplitRuleStateCopyWithImpl(this._self, this._then);

  final _CreateSplitRuleState _self;
  final $Res Function(_CreateSplitRuleState) _then;

/// Create a copy of CreateSplitRuleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? contributors = null,Object? name = null,Object? entries = null,}) {
  return _then(_CreateSplitRuleState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateSplitRuleStatus,contributors: null == contributors ? _self._contributors : contributors // ignore: cast_nullable_to_non_nullable
as List<ListContributorItemResponse>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<Entry>,
  ));
}


}

/// @nodoc
mixin _$Entry {

 ListContributorItemResponse? get contributor; double get share;
/// Create a copy of Entry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntryCopyWith<Entry> get copyWith => _$EntryCopyWithImpl<Entry>(this as Entry, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Entry&&(identical(other.contributor, contributor) || other.contributor == contributor)&&(identical(other.share, share) || other.share == share));
}


@override
int get hashCode => Object.hash(runtimeType,contributor,share);

@override
String toString() {
  return 'Entry(contributor: $contributor, share: $share)';
}


}

/// @nodoc
abstract mixin class $EntryCopyWith<$Res>  {
  factory $EntryCopyWith(Entry value, $Res Function(Entry) _then) = _$EntryCopyWithImpl;
@useResult
$Res call({
 ListContributorItemResponse? contributor, double share
});


$ListContributorItemResponseCopyWith<$Res>? get contributor;

}
/// @nodoc
class _$EntryCopyWithImpl<$Res>
    implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._self, this._then);

  final Entry _self;
  final $Res Function(Entry) _then;

/// Create a copy of Entry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contributor = freezed,Object? share = null,}) {
  return _then(_self.copyWith(
contributor: freezed == contributor ? _self.contributor : contributor // ignore: cast_nullable_to_non_nullable
as ListContributorItemResponse?,share: null == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of Entry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListContributorItemResponseCopyWith<$Res>? get contributor {
    if (_self.contributor == null) {
    return null;
  }

  return $ListContributorItemResponseCopyWith<$Res>(_self.contributor!, (value) {
    return _then(_self.copyWith(contributor: value));
  });
}
}


/// Adds pattern-matching-related methods to [Entry].
extension EntryPatterns on Entry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Entry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Entry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Entry value)  $default,){
final _that = this;
switch (_that) {
case _Entry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Entry value)?  $default,){
final _that = this;
switch (_that) {
case _Entry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ListContributorItemResponse? contributor,  double share)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Entry() when $default != null:
return $default(_that.contributor,_that.share);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ListContributorItemResponse? contributor,  double share)  $default,) {final _that = this;
switch (_that) {
case _Entry():
return $default(_that.contributor,_that.share);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ListContributorItemResponse? contributor,  double share)?  $default,) {final _that = this;
switch (_that) {
case _Entry() when $default != null:
return $default(_that.contributor,_that.share);case _:
  return null;

}
}

}

/// @nodoc


class _Entry implements Entry {
   _Entry({required this.contributor, required this.share});
  

@override final  ListContributorItemResponse? contributor;
@override final  double share;

/// Create a copy of Entry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntryCopyWith<_Entry> get copyWith => __$EntryCopyWithImpl<_Entry>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Entry&&(identical(other.contributor, contributor) || other.contributor == contributor)&&(identical(other.share, share) || other.share == share));
}


@override
int get hashCode => Object.hash(runtimeType,contributor,share);

@override
String toString() {
  return 'Entry(contributor: $contributor, share: $share)';
}


}

/// @nodoc
abstract mixin class _$EntryCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$EntryCopyWith(_Entry value, $Res Function(_Entry) _then) = __$EntryCopyWithImpl;
@override @useResult
$Res call({
 ListContributorItemResponse? contributor, double share
});


@override $ListContributorItemResponseCopyWith<$Res>? get contributor;

}
/// @nodoc
class __$EntryCopyWithImpl<$Res>
    implements _$EntryCopyWith<$Res> {
  __$EntryCopyWithImpl(this._self, this._then);

  final _Entry _self;
  final $Res Function(_Entry) _then;

/// Create a copy of Entry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contributor = freezed,Object? share = null,}) {
  return _then(_Entry(
contributor: freezed == contributor ? _self.contributor : contributor // ignore: cast_nullable_to_non_nullable
as ListContributorItemResponse?,share: null == share ? _self.share : share // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of Entry
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListContributorItemResponseCopyWith<$Res>? get contributor {
    if (_self.contributor == null) {
    return null;
  }

  return $ListContributorItemResponseCopyWith<$Res>(_self.contributor!, (value) {
    return _then(_self.copyWith(contributor: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_expense_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateExpenseState {

 CreateExpenseStatus get status; List<ListSplitRuleItemResponse> get splitRules; List<ListBankAccountItemResponse> get bankAccounts; ListSplitRuleItemResponse? get splitRule; ListBankAccountItemResponse? get bankAccount; String get name; String get description; double get amount;
/// Create a copy of CreateExpenseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateExpenseStateCopyWith<CreateExpenseState> get copyWith => _$CreateExpenseStateCopyWithImpl<CreateExpenseState>(this as CreateExpenseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateExpenseState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.splitRules, splitRules)&&const DeepCollectionEquality().equals(other.bankAccounts, bankAccounts)&&(identical(other.splitRule, splitRule) || other.splitRule == splitRule)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(splitRules),const DeepCollectionEquality().hash(bankAccounts),splitRule,bankAccount,name,description,amount);

@override
String toString() {
  return 'CreateExpenseState(status: $status, splitRules: $splitRules, bankAccounts: $bankAccounts, splitRule: $splitRule, bankAccount: $bankAccount, name: $name, description: $description, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $CreateExpenseStateCopyWith<$Res>  {
  factory $CreateExpenseStateCopyWith(CreateExpenseState value, $Res Function(CreateExpenseState) _then) = _$CreateExpenseStateCopyWithImpl;
@useResult
$Res call({
 CreateExpenseStatus status, List<ListSplitRuleItemResponse> splitRules, List<ListBankAccountItemResponse> bankAccounts, ListSplitRuleItemResponse? splitRule, ListBankAccountItemResponse? bankAccount, String name, String description, double amount
});


$ListSplitRuleItemResponseCopyWith<$Res>? get splitRule;$ListBankAccountItemResponseCopyWith<$Res>? get bankAccount;

}
/// @nodoc
class _$CreateExpenseStateCopyWithImpl<$Res>
    implements $CreateExpenseStateCopyWith<$Res> {
  _$CreateExpenseStateCopyWithImpl(this._self, this._then);

  final CreateExpenseState _self;
  final $Res Function(CreateExpenseState) _then;

/// Create a copy of CreateExpenseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? splitRules = null,Object? bankAccounts = null,Object? splitRule = freezed,Object? bankAccount = freezed,Object? name = null,Object? description = null,Object? amount = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateExpenseStatus,splitRules: null == splitRules ? _self.splitRules : splitRules // ignore: cast_nullable_to_non_nullable
as List<ListSplitRuleItemResponse>,bankAccounts: null == bankAccounts ? _self.bankAccounts : bankAccounts // ignore: cast_nullable_to_non_nullable
as List<ListBankAccountItemResponse>,splitRule: freezed == splitRule ? _self.splitRule : splitRule // ignore: cast_nullable_to_non_nullable
as ListSplitRuleItemResponse?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as ListBankAccountItemResponse?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of CreateExpenseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListSplitRuleItemResponseCopyWith<$Res>? get splitRule {
    if (_self.splitRule == null) {
    return null;
  }

  return $ListSplitRuleItemResponseCopyWith<$Res>(_self.splitRule!, (value) {
    return _then(_self.copyWith(splitRule: value));
  });
}/// Create a copy of CreateExpenseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListBankAccountItemResponseCopyWith<$Res>? get bankAccount {
    if (_self.bankAccount == null) {
    return null;
  }

  return $ListBankAccountItemResponseCopyWith<$Res>(_self.bankAccount!, (value) {
    return _then(_self.copyWith(bankAccount: value));
  });
}
}


/// Adds pattern-matching-related methods to [CreateExpenseState].
extension CreateExpenseStatePatterns on CreateExpenseState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateExpenseState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateExpenseState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateExpenseState value)  $default,){
final _that = this;
switch (_that) {
case _CreateExpenseState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateExpenseState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateExpenseState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CreateExpenseStatus status,  List<ListSplitRuleItemResponse> splitRules,  List<ListBankAccountItemResponse> bankAccounts,  ListSplitRuleItemResponse? splitRule,  ListBankAccountItemResponse? bankAccount,  String name,  String description,  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateExpenseState() when $default != null:
return $default(_that.status,_that.splitRules,_that.bankAccounts,_that.splitRule,_that.bankAccount,_that.name,_that.description,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CreateExpenseStatus status,  List<ListSplitRuleItemResponse> splitRules,  List<ListBankAccountItemResponse> bankAccounts,  ListSplitRuleItemResponse? splitRule,  ListBankAccountItemResponse? bankAccount,  String name,  String description,  double amount)  $default,) {final _that = this;
switch (_that) {
case _CreateExpenseState():
return $default(_that.status,_that.splitRules,_that.bankAccounts,_that.splitRule,_that.bankAccount,_that.name,_that.description,_that.amount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CreateExpenseStatus status,  List<ListSplitRuleItemResponse> splitRules,  List<ListBankAccountItemResponse> bankAccounts,  ListSplitRuleItemResponse? splitRule,  ListBankAccountItemResponse? bankAccount,  String name,  String description,  double amount)?  $default,) {final _that = this;
switch (_that) {
case _CreateExpenseState() when $default != null:
return $default(_that.status,_that.splitRules,_that.bankAccounts,_that.splitRule,_that.bankAccount,_that.name,_that.description,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _CreateExpenseState implements CreateExpenseState {
   _CreateExpenseState({required this.status, required final  List<ListSplitRuleItemResponse> splitRules, required final  List<ListBankAccountItemResponse> bankAccounts, required this.splitRule, required this.bankAccount, required this.name, required this.description, required this.amount}): _splitRules = splitRules,_bankAccounts = bankAccounts;
  

@override final  CreateExpenseStatus status;
 final  List<ListSplitRuleItemResponse> _splitRules;
@override List<ListSplitRuleItemResponse> get splitRules {
  if (_splitRules is EqualUnmodifiableListView) return _splitRules;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_splitRules);
}

 final  List<ListBankAccountItemResponse> _bankAccounts;
@override List<ListBankAccountItemResponse> get bankAccounts {
  if (_bankAccounts is EqualUnmodifiableListView) return _bankAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bankAccounts);
}

@override final  ListSplitRuleItemResponse? splitRule;
@override final  ListBankAccountItemResponse? bankAccount;
@override final  String name;
@override final  String description;
@override final  double amount;

/// Create a copy of CreateExpenseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateExpenseStateCopyWith<_CreateExpenseState> get copyWith => __$CreateExpenseStateCopyWithImpl<_CreateExpenseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateExpenseState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._splitRules, _splitRules)&&const DeepCollectionEquality().equals(other._bankAccounts, _bankAccounts)&&(identical(other.splitRule, splitRule) || other.splitRule == splitRule)&&(identical(other.bankAccount, bankAccount) || other.bankAccount == bankAccount)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_splitRules),const DeepCollectionEquality().hash(_bankAccounts),splitRule,bankAccount,name,description,amount);

@override
String toString() {
  return 'CreateExpenseState(status: $status, splitRules: $splitRules, bankAccounts: $bankAccounts, splitRule: $splitRule, bankAccount: $bankAccount, name: $name, description: $description, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$CreateExpenseStateCopyWith<$Res> implements $CreateExpenseStateCopyWith<$Res> {
  factory _$CreateExpenseStateCopyWith(_CreateExpenseState value, $Res Function(_CreateExpenseState) _then) = __$CreateExpenseStateCopyWithImpl;
@override @useResult
$Res call({
 CreateExpenseStatus status, List<ListSplitRuleItemResponse> splitRules, List<ListBankAccountItemResponse> bankAccounts, ListSplitRuleItemResponse? splitRule, ListBankAccountItemResponse? bankAccount, String name, String description, double amount
});


@override $ListSplitRuleItemResponseCopyWith<$Res>? get splitRule;@override $ListBankAccountItemResponseCopyWith<$Res>? get bankAccount;

}
/// @nodoc
class __$CreateExpenseStateCopyWithImpl<$Res>
    implements _$CreateExpenseStateCopyWith<$Res> {
  __$CreateExpenseStateCopyWithImpl(this._self, this._then);

  final _CreateExpenseState _self;
  final $Res Function(_CreateExpenseState) _then;

/// Create a copy of CreateExpenseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? splitRules = null,Object? bankAccounts = null,Object? splitRule = freezed,Object? bankAccount = freezed,Object? name = null,Object? description = null,Object? amount = null,}) {
  return _then(_CreateExpenseState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CreateExpenseStatus,splitRules: null == splitRules ? _self._splitRules : splitRules // ignore: cast_nullable_to_non_nullable
as List<ListSplitRuleItemResponse>,bankAccounts: null == bankAccounts ? _self._bankAccounts : bankAccounts // ignore: cast_nullable_to_non_nullable
as List<ListBankAccountItemResponse>,splitRule: freezed == splitRule ? _self.splitRule : splitRule // ignore: cast_nullable_to_non_nullable
as ListSplitRuleItemResponse?,bankAccount: freezed == bankAccount ? _self.bankAccount : bankAccount // ignore: cast_nullable_to_non_nullable
as ListBankAccountItemResponse?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of CreateExpenseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListSplitRuleItemResponseCopyWith<$Res>? get splitRule {
    if (_self.splitRule == null) {
    return null;
  }

  return $ListSplitRuleItemResponseCopyWith<$Res>(_self.splitRule!, (value) {
    return _then(_self.copyWith(splitRule: value));
  });
}/// Create a copy of CreateExpenseState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListBankAccountItemResponseCopyWith<$Res>? get bankAccount {
    if (_self.bankAccount == null) {
    return null;
  }

  return $ListBankAccountItemResponseCopyWith<$Res>(_self.bankAccount!, (value) {
    return _then(_self.copyWith(bankAccount: value));
  });
}
}

// dart format on

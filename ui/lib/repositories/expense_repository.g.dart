// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListExpenseItemResponse _$ListExpenseItemResponseFromJson(
  Map<String, dynamic> json,
) => _ListExpenseItemResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$ListExpenseItemResponseToJson(
  _ListExpenseItemResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_ListExpensesResponse _$ListExpensesResponseFromJson(
  Map<String, dynamic> json,
) => _ListExpensesResponse(
  items: (json['items'] as List<dynamic>)
      .map((e) => ListExpenseItemResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListExpensesResponseToJson(
  _ListExpensesResponse instance,
) => <String, dynamic>{'items': instance.items};

_CreateExpenseRequest _$CreateExpenseRequestFromJson(
  Map<String, dynamic> json,
) => _CreateExpenseRequest(
  splitRuleId: (json['splitRuleId'] as num).toInt(),
  bankAccountId: (json['bankAccountId'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String,
  amount: (json['amount'] as num).toDouble(),
);

Map<String, dynamic> _$CreateExpenseRequestToJson(
  _CreateExpenseRequest instance,
) => <String, dynamic>{
  'splitRuleId': instance.splitRuleId,
  'bankAccountId': instance.bankAccountId,
  'name': instance.name,
  'description': instance.description,
  'amount': instance.amount,
};

_CreateExpenseResponse _$CreateExpenseResponseFromJson(
  Map<String, dynamic> json,
) => _CreateExpenseResponse(id: (json['id'] as num).toInt());

Map<String, dynamic> _$CreateExpenseResponseToJson(
  _CreateExpenseResponse instance,
) => <String, dynamic>{'id': instance.id};

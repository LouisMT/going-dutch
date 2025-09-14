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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListBankAccountItem _$ListBankAccountItemFromJson(Map<String, dynamic> json) =>
    ListBankAccountItem(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$ListBankAccountItemToJson(
  ListBankAccountItem instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

ListBankAccounts _$ListBankAccountsFromJson(Map<String, dynamic> json) =>
    ListBankAccounts(
      items: (json['items'] as List<dynamic>)
          .map((e) => ListBankAccountItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListBankAccountsToJson(ListBankAccounts instance) =>
    <String, dynamic>{'items': instance.items};

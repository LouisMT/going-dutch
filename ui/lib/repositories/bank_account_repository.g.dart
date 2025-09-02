// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListBankAccountItemResponse _$ListBankAccountItemResponseFromJson(
  Map<String, dynamic> json,
) => _ListBankAccountItemResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$ListBankAccountItemResponseToJson(
  _ListBankAccountItemResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_ListBankAccountsResponse _$ListBankAccountsResponseFromJson(
  Map<String, dynamic> json,
) => _ListBankAccountsResponse(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) => ListBankAccountItemResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ListBankAccountsResponseToJson(
  _ListBankAccountsResponse instance,
) => <String, dynamic>{'items': instance.items};

_CreateBankAccountRequest _$CreateBankAccountRequestFromJson(
  Map<String, dynamic> json,
) => _CreateBankAccountRequest(name: json['name'] as String);

Map<String, dynamic> _$CreateBankAccountRequestToJson(
  _CreateBankAccountRequest instance,
) => <String, dynamic>{'name': instance.name};

_CreateBankAccountResponse _$CreateBankAccountResponseFromJson(
  Map<String, dynamic> json,
) => _CreateBankAccountResponse(id: (json['id'] as num).toInt());

Map<String, dynamic> _$CreateBankAccountResponseToJson(
  _CreateBankAccountResponse instance,
) => <String, dynamic>{'id': instance.id};

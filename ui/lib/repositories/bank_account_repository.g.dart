// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListBankAccountItemResponse _$ListBankAccountItemResponseFromJson(
  Map<String, dynamic> json,
) => ListBankAccountItemResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$ListBankAccountItemResponseToJson(
  ListBankAccountItemResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

ListBankAccountsResponse _$ListBankAccountsResponseFromJson(
  Map<String, dynamic> json,
) => ListBankAccountsResponse(
  items: (json['items'] as List<dynamic>)
      .map(
        (e) => ListBankAccountItemResponse.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$ListBankAccountsResponseToJson(
  ListBankAccountsResponse instance,
) => <String, dynamic>{'items': instance.items};

CreateBankAccountRequest _$CreateBankAccountRequestFromJson(
  Map<String, dynamic> json,
) => CreateBankAccountRequest(name: json['name'] as String);

Map<String, dynamic> _$CreateBankAccountRequestToJson(
  CreateBankAccountRequest instance,
) => <String, dynamic>{'name': instance.name};

CreateBankAccountResponse _$CreateBankAccountResponseFromJson(
  Map<String, dynamic> json,
) => CreateBankAccountResponse(id: (json['id'] as num).toInt());

Map<String, dynamic> _$CreateBankAccountResponseToJson(
  CreateBankAccountResponse instance,
) => <String, dynamic>{'id': instance.id};

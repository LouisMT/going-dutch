// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'split_rule_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListSplitRuleItemResponse _$ListSplitRuleItemResponseFromJson(
  Map<String, dynamic> json,
) => ListSplitRuleItemResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$ListSplitRuleItemResponseToJson(
  ListSplitRuleItemResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

ListSplitRulesResponse _$ListSplitRulesResponseFromJson(
  Map<String, dynamic> json,
) => ListSplitRulesResponse(
  items: (json['items'] as List<dynamic>)
      .map((e) => ListSplitRuleItemResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListSplitRulesResponseToJson(
  ListSplitRulesResponse instance,
) => <String, dynamic>{'items': instance.items};

CreateSplitRuleRequest _$CreateSplitRuleRequestFromJson(
  Map<String, dynamic> json,
) => CreateSplitRuleRequest(
  name: json['name'] as String,
  entries: (json['entries'] as List<dynamic>)
      .map(
        (e) => CreateSplitRuleEntryRequest.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$CreateSplitRuleRequestToJson(
  CreateSplitRuleRequest instance,
) => <String, dynamic>{'name': instance.name, 'entries': instance.entries};

CreateSplitRuleEntryRequest _$CreateSplitRuleEntryRequestFromJson(
  Map<String, dynamic> json,
) => CreateSplitRuleEntryRequest(
  contributorId: (json['contributorId'] as num).toInt(),
  share: (json['share'] as num).toDouble(),
);

Map<String, dynamic> _$CreateSplitRuleEntryRequestToJson(
  CreateSplitRuleEntryRequest instance,
) => <String, dynamic>{
  'contributorId': instance.contributorId,
  'share': instance.share,
};

CreateSplitRuleResponse _$CreateSplitRuleResponseFromJson(
  Map<String, dynamic> json,
) => CreateSplitRuleResponse(id: (json['id'] as num).toInt());

Map<String, dynamic> _$CreateSplitRuleResponseToJson(
  CreateSplitRuleResponse instance,
) => <String, dynamic>{'id': instance.id};

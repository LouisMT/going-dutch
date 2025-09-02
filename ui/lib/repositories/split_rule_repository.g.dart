// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'split_rule_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListSplitRuleItemResponse _$ListSplitRuleItemResponseFromJson(
  Map<String, dynamic> json,
) => _ListSplitRuleItemResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$ListSplitRuleItemResponseToJson(
  _ListSplitRuleItemResponse instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_ListSplitRulesResponse _$ListSplitRulesResponseFromJson(
  Map<String, dynamic> json,
) => _ListSplitRulesResponse(
  items: (json['items'] as List<dynamic>)
      .map((e) => ListSplitRuleItemResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ListSplitRulesResponseToJson(
  _ListSplitRulesResponse instance,
) => <String, dynamic>{'items': instance.items};

_CreateSplitRuleRequest _$CreateSplitRuleRequestFromJson(
  Map<String, dynamic> json,
) => _CreateSplitRuleRequest(
  name: json['name'] as String,
  entries: (json['entries'] as List<dynamic>)
      .map(
        (e) => CreateSplitRuleEntryRequest.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$CreateSplitRuleRequestToJson(
  _CreateSplitRuleRequest instance,
) => <String, dynamic>{'name': instance.name, 'entries': instance.entries};

_CreateSplitRuleEntryRequest _$CreateSplitRuleEntryRequestFromJson(
  Map<String, dynamic> json,
) => _CreateSplitRuleEntryRequest(
  contributorId: (json['contributorId'] as num).toInt(),
  share: (json['share'] as num).toDouble(),
);

Map<String, dynamic> _$CreateSplitRuleEntryRequestToJson(
  _CreateSplitRuleEntryRequest instance,
) => <String, dynamic>{
  'contributorId': instance.contributorId,
  'share': instance.share,
};

_CreateSplitRuleResponse _$CreateSplitRuleResponseFromJson(
  Map<String, dynamic> json,
) => _CreateSplitRuleResponse(id: (json['id'] as num).toInt());

Map<String, dynamic> _$CreateSplitRuleResponseToJson(
  _CreateSplitRuleResponse instance,
) => <String, dynamic>{'id': instance.id};

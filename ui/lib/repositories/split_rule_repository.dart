import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'split_rule_repository.g.dart';

@JsonSerializable()
class ListSplitRuleItemResponse {
  final int id;

  final String name;

  const ListSplitRuleItemResponse({required this.id, required this.name});

  factory ListSplitRuleItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ListSplitRuleItemResponseFromJson(json);
}

@JsonSerializable()
class ListSplitRulesResponse {
  final List<ListSplitRuleItemResponse> items;

  const ListSplitRulesResponse({required this.items});

  factory ListSplitRulesResponse.fromJson(Map<String, dynamic> json) =>
      _$ListSplitRulesResponseFromJson(json);
}

Future<ListSplitRulesResponse> listSplitRules() async {
  final response = await http.get(
    Uri.parse('http://localhost:5148/split-rules'),
  );

  if (response.statusCode == 200) {
    return ListSplitRulesResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to load split rules');
  }
}

@JsonSerializable()
class CreateSplitRuleRequest {
  final String name;

  final List<CreateSplitRuleEntryRequest> entries;

  const CreateSplitRuleRequest({required this.name, required this.entries});

  factory CreateSplitRuleRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSplitRuleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateSplitRuleRequestToJson(this);
}

@JsonSerializable()
class CreateSplitRuleEntryRequest {
  final int contributorId;

  final double share;

  const CreateSplitRuleEntryRequest({
    required this.contributorId,
    required this.share,
  });

  factory CreateSplitRuleEntryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSplitRuleEntryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateSplitRuleEntryRequestToJson(this);
}

@JsonSerializable()
class CreateSplitRuleResponse {
  final int id;

  const CreateSplitRuleResponse({required this.id});

  factory CreateSplitRuleResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateSplitRuleResponseFromJson(json);
}

Future<CreateSplitRuleResponse> createSplitRule(
  CreateSplitRuleRequest request,
) async {
  final response = await http.post(
    Uri.parse('http://localhost:5148/split-rules'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(request.toJson()),
  );

  if (response.statusCode == 200) {
    return CreateSplitRuleResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to create split rule');
  }
}

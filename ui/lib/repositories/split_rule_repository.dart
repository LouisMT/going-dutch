import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/constants.dart';
import 'package:http/http.dart' as http;

part 'split_rule_repository.freezed.dart';
part 'split_rule_repository.g.dart';

@freezed
sealed class ListSplitRuleItemResponse with _$ListSplitRuleItemResponse {
  factory ListSplitRuleItemResponse({required int id, required String name}) =
      _ListSplitRuleItemResponse;

  factory ListSplitRuleItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ListSplitRuleItemResponseFromJson(json);
}

@freezed
sealed class ListSplitRulesResponse with _$ListSplitRulesResponse {
  factory ListSplitRulesResponse({
    required List<ListSplitRuleItemResponse> items,
  }) = _ListSplitRulesResponse;

  factory ListSplitRulesResponse.fromJson(Map<String, dynamic> json) =>
      _$ListSplitRulesResponseFromJson(json);
}

Future<ListSplitRulesResponse> listSplitRules() async {
  final response = await http.get(
    Uri.parse('${apiBaseUrl}/split-rules'),
  );

  if (response.statusCode == 200) {
    return ListSplitRulesResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to load split rules');
  }
}

@freezed
sealed class CreateSplitRuleRequest with _$CreateSplitRuleRequest {
  factory CreateSplitRuleRequest({
    required String name,
    required List<CreateSplitRuleEntryRequest> entries,
  }) = _CreateSplitRuleRequest;

  factory CreateSplitRuleRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSplitRuleRequestFromJson(json);
}

@freezed
sealed class CreateSplitRuleEntryRequest with _$CreateSplitRuleEntryRequest {
  factory CreateSplitRuleEntryRequest({
    required int contributorId,
    required double share,
  }) = _CreateSplitRuleEntryRequest;

  factory CreateSplitRuleEntryRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSplitRuleEntryRequestFromJson(json);
}

@freezed
sealed class CreateSplitRuleResponse with _$CreateSplitRuleResponse {
  factory CreateSplitRuleResponse({required int id}) = _CreateSplitRuleResponse;

  factory CreateSplitRuleResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateSplitRuleResponseFromJson(json);
}

Future<CreateSplitRuleResponse> createSplitRule(
  CreateSplitRuleRequest request,
) async {
  final response = await http.post(
    Uri.parse('${apiBaseUrl}/split-rules'),
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

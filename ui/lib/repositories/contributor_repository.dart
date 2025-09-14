import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/constants.dart';
import 'package:http/http.dart' as http;

part 'contributor_repository.freezed.dart';
part 'contributor_repository.g.dart';

@freezed
sealed class ListContributorItemResponse with _$ListContributorItemResponse {
  factory ListContributorItemResponse({required int id, required String name}) =
      _ListContributorItemResponse;

  factory ListContributorItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ListContributorItemResponseFromJson(json);
}

@freezed
sealed class ListContributorsResponse with _$ListContributorsResponse {
  factory ListContributorsResponse({
    required List<ListContributorItemResponse> items,
  }) = _ListContributorsResponse;

  factory ListContributorsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListContributorsResponseFromJson(json);
}

Future<ListContributorsResponse> listContributors() async {
  final response = await http.get(
    Uri.parse('$apiBaseUrl/contributors'),
  );

  if (response.statusCode == 200) {
    return ListContributorsResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to load contributors');
  }
}

@freezed
sealed class CreateContributorRequest with _$CreateContributorRequest {
  factory CreateContributorRequest({required String name}) =
      _CreateContributorRequest;

  factory CreateContributorRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateContributorRequestFromJson(json);
}

@freezed
sealed class CreateContributorResponse with _$CreateContributorResponse {
  factory CreateContributorResponse({required int id}) =
      _CreateContributorResponse;

  factory CreateContributorResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateContributorResponseFromJson(json);
}

Future<CreateContributorResponse> createContributor(
  CreateContributorRequest request,
) async {
  final response = await http.post(
    Uri.parse('$apiBaseUrl/contributors'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(request.toJson()),
  );

  if (response.statusCode == 200) {
    return CreateContributorResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to create contributor');
  }
}

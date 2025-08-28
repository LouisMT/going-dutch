import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'contributor_repository.g.dart';

@JsonSerializable()
class ListContributorItemResponse {
  final int id;

  final String name;

  const ListContributorItemResponse({required this.id, required this.name});

  factory ListContributorItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ListContributorItemResponseFromJson(json);
}

@JsonSerializable()
class ListContributorsResponse {
  final List<ListContributorItemResponse> items;

  const ListContributorsResponse({required this.items});

  factory ListContributorsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListContributorsResponseFromJson(json);
}

Future<ListContributorsResponse> listContributors() async {
  final response = await http.get(
    Uri.parse('http://localhost:5148/contributors'),
  );

  if (response.statusCode == 200) {
    return ListContributorsResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to load contributors');
  }
}

@JsonSerializable()
class CreateContributorRequest {
  final String name;

  const CreateContributorRequest({required this.name});

  Map<String, dynamic> toJson() => _$CreateContributorRequestToJson(this);
}

@JsonSerializable()
class CreateContributorResponse {
  final int id;

  const CreateContributorResponse({required this.id});

  factory CreateContributorResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateContributorResponseFromJson(json);
}

Future<CreateContributorResponse> createContributor(
  CreateContributorRequest request,
) async {
  final response = await http.post(
    Uri.parse('http://localhost:5148/contributors'),
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

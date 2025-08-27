import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'bank_account_repository.g.dart';

@JsonSerializable()
class ListBankAccountItemResponse {
  final int id;

  final String name;

  const ListBankAccountItemResponse({required this.id, required this.name});

  factory ListBankAccountItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ListBankAccountItemResponseFromJson(json);
}

@JsonSerializable()
class ListBankAccountsResponse {
  final List<ListBankAccountItemResponse> items;

  const ListBankAccountsResponse({required this.items});

  factory ListBankAccountsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListBankAccountsResponseFromJson(json);
}

Future<ListBankAccountsResponse> listBankAccounts() async {
  final response = await http.get(
    Uri.parse('http://localhost:5148/bank-accounts'),
  );

  if (response.statusCode == 200) {
    return ListBankAccountsResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to load bank accounts');
  }
}

@JsonSerializable()
class CreateBankAccountRequest {
  final String name;

  const CreateBankAccountRequest({required this.name});

  Map<String, dynamic> toJson() => _$CreateBankAccountRequestToJson(this);
}

@JsonSerializable()
class CreateBankAccountResponse {
  final int id;

  const CreateBankAccountResponse({required this.id});

  factory CreateBankAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateBankAccountResponseFromJson(json);
}

Future<CreateBankAccountResponse> createBankAccount(
  CreateBankAccountRequest request,
) async {
  final response = await http.post(
    Uri.parse('http://localhost:5148/bank-accounts'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(request.toJson()),
  );

  if (response.statusCode == 200) {
    return CreateBankAccountResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to create bank account');
  }
}

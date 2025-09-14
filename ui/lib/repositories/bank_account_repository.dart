import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/constants.dart';
import 'package:http/http.dart' as http;

part 'bank_account_repository.freezed.dart';
part 'bank_account_repository.g.dart';

@freezed
sealed class ListBankAccountItemResponse with _$ListBankAccountItemResponse {
  factory ListBankAccountItemResponse({required int id, required String name}) =
      _ListBankAccountItemResponse;

  factory ListBankAccountItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ListBankAccountItemResponseFromJson(json);
}

@freezed
sealed class ListBankAccountsResponse with _$ListBankAccountsResponse {
  factory ListBankAccountsResponse({
    required List<ListBankAccountItemResponse> items,
  }) = _ListBankAccountsResponse;

  factory ListBankAccountsResponse.fromJson(Map<String, dynamic> json) =>
      _$ListBankAccountsResponseFromJson(json);
}

Future<ListBankAccountsResponse> listBankAccounts() async {
  final response = await http.get(Uri.parse('$apiBaseUrl/bank-accounts'));

  if (response.statusCode == 200) {
    return ListBankAccountsResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to load bank accounts');
  }
}

@freezed
sealed class CreateBankAccountRequest with _$CreateBankAccountRequest {
  factory CreateBankAccountRequest({required String name}) =
      _CreateBankAccountRequest;

  factory CreateBankAccountRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBankAccountRequestFromJson(json);
}

@freezed
sealed class CreateBankAccountResponse with _$CreateBankAccountResponse {
  factory CreateBankAccountResponse({required int id}) =
      _CreateBankAccountResponse;

  factory CreateBankAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateBankAccountResponseFromJson(json);
}

Future<CreateBankAccountResponse> createBankAccount(
  CreateBankAccountRequest request,
) async {
  final response = await http.post(
    Uri.parse('$apiBaseUrl/bank-accounts'),
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

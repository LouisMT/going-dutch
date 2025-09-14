import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:going_dutch_ui/constants.dart';
import 'package:http/http.dart' as http;

part 'expense_repository.freezed.dart';
part 'expense_repository.g.dart';

@freezed
sealed class ListExpenseItemResponse with _$ListExpenseItemResponse {
  factory ListExpenseItemResponse({required int id, required String name}) =
      _ListExpenseItemResponse;

  factory ListExpenseItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ListExpenseItemResponseFromJson(json);
}

@freezed
sealed class ListExpensesResponse with _$ListExpensesResponse {
  factory ListExpensesResponse({required List<ListExpenseItemResponse> items}) =
      _ListExpensesResponse;

  factory ListExpensesResponse.fromJson(Map<String, dynamic> json) =>
      _$ListExpensesResponseFromJson(json);
}

Future<ListExpensesResponse> listExpenses() async {
  final response = await http.get(Uri.parse('$apiBaseUrl/expenses'));

  if (response.statusCode == 200) {
    return ListExpensesResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to load expenses');
  }
}

@freezed
sealed class CreateExpenseRequest with _$CreateExpenseRequest {
  factory CreateExpenseRequest({
    required int splitRuleId,
    required int bankAccountId,
    required String name,
    required String description,
    required double amount,
  }) = _CreateExpenseRequest;

  factory CreateExpenseRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateExpenseRequestFromJson(json);
}

@freezed
sealed class CreateExpenseResponse with _$CreateExpenseResponse {
  factory CreateExpenseResponse({required int id}) = _CreateExpenseResponse;

  factory CreateExpenseResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateExpenseResponseFromJson(json);
}

Future<CreateExpenseResponse> createExpense(
  CreateExpenseRequest request,
) async {
  final response = await http.post(
    Uri.parse('$apiBaseUrl/expenses'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(request.toJson()),
  );

  if (response.statusCode == 200) {
    return CreateExpenseResponse.fromJson(
      jsonDecode(response.body) as Map<String, dynamic>,
    );
  } else {
    throw Exception('Failed to create expense');
  }
}

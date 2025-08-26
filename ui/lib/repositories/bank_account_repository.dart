import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'bank_account_repository.g.dart';

@JsonSerializable()
class ListBankAccountItem {
  final int id;

  final String name;

  const ListBankAccountItem({required this.id, required this.name});

  factory ListBankAccountItem.fromJson(Map<String, dynamic> json) => _$ListBankAccountItemFromJson(json);
}

@JsonSerializable()
class ListBankAccounts {
  final List<ListBankAccountItem> items; 
  
  const ListBankAccounts({required this.items});
  
  factory ListBankAccounts.fromJson(Map<String, dynamic> json) => _$ListBankAccountsFromJson(json);
}

Future<ListBankAccounts> listBankAccounts() async {
  final response = await http.get(
    Uri.parse('http://localhost:5148/bank-accounts')
  );
  
  if (response.statusCode == 200) {
    return ListBankAccounts.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load bank accounts');
  }
}

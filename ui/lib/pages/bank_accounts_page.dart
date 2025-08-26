import 'package:flutter/material.dart';
import 'package:going_dutch_ui/repositories/bank_account_repository.dart';

class BankAccountsPage extends StatefulWidget {
  const BankAccountsPage({super.key});

  @override
  State<BankAccountsPage> createState() => _BankAccountsPageState();
}

class _BankAccountsPageState extends State<BankAccountsPage> {
  late Future<ListBankAccounts> listBankAccountsResponse;

  @override
  void initState() {
    super.initState();
    listBankAccountsResponse = listBankAccounts();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: listBankAccountsResponse,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: snapshot.data!.items.map((i) {
                return Card(
                  child: ListTile(
                    title: Text(i.name),
                    subtitle: Text('#${i.id}')
                  ),
                );
              }).toList(),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}

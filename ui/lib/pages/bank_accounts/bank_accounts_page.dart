import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:going_dutch_ui/pages/bank_accounts/bank_accounts_cubit.dart';
import 'package:going_dutch_ui/pages/bank_accounts/bank_accounts_state.dart';

class BankAccountsPage extends StatelessWidget {
  const BankAccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BankAccountsCubit(),
      child: BankAccountsContent(),
    );
  }
}

class BankAccountsContent extends StatelessWidget {
  const BankAccountsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<BankAccountsCubit, BankAccountsState>(
        builder: (context, state) => switch (state) {
          BankAccountsLoadingState() => CircularProgressIndicator(),
          BankAccountsErrorState() => Text('Error while loading bank accounts'),
          BankAccountsLoadedState() => ListView(
            children: state.response.items.map((i) {
              return Card(
                child: ListTile(
                  title: Text(i.name),
                  subtitle: Text('#${i.id}'),
                ),
              );
            }).toList(),
          ),
        },
      ),
    );
  }
}

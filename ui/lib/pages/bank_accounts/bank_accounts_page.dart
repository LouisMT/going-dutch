import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/bank_accounts/bank_accounts_cubit.dart';
import 'package:going_dutch_ui/pages/bank_accounts/bank_accounts_state.dart';
import 'package:going_dutch_ui/route_names.dart';

class BankAccountsPage extends StatelessWidget {
  const BankAccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(
        title: Text('Bank Accounts'),
        commandBar: CommandBar(
          mainAxisAlignment: MainAxisAlignment.end,
          primaryItems: [
            CommandBarButton(
              icon: Icon(FluentIcons.add),
              label: Text('Create'),
              onPressed: () => context.goNamed(RouteNames.createBankAccount),
            ),
          ],
        ),
      ),
      content: BlocProvider(
        create: (_) => BankAccountsCubit(),
        child: BankAccountsContent(),
      ),
    );
  }
}

class BankAccountsContent extends StatelessWidget {
  const BankAccountsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BankAccountsCubit, BankAccountsState>(
      builder: (context, state) => switch (state.status) {
        BankAccountsStatus.loading => Center(child: ProgressRing()),
        BankAccountsStatus.error => Center(
          child: InfoBar(
            title: Text('Failed to load bank accounts'),
            severity: InfoBarSeverity.error,
          ),
        ),
        BankAccountsStatus.loaded => ListView.builder(
          itemCount: state.items.length,
          itemBuilder: (context, index) {
            final item = state.items[index];
            return ListTile(
              title: Text(item.name),
              subtitle: Text('#${item.id}'),
            );
          },
        ),
      },
    );
  }
}

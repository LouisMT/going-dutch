import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/expenses/expenses_cubit.dart';
import 'package:going_dutch_ui/pages/expenses/expenses_state.dart';
import 'package:going_dutch_ui/route_names.dart';

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(
        title: Text('Expenses'),
        commandBar: CommandBar(
          mainAxisAlignment: MainAxisAlignment.end,
          primaryItems: [
            CommandBarButton(
              icon: Icon(FluentIcons.add),
              label: Text('Create'),
              onPressed: () => context.goNamed(RouteNames.createExpense),
            ),
          ],
        ),
      ),
      content: BlocProvider(
        create: (_) => ExpensesCubit(),
        child: ExpensesContent(),
      ),
    );
  }
}

class ExpensesContent extends StatelessWidget {
  const ExpensesContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensesCubit, ExpensesState>(
      builder: (context, state) => switch (state.status) {
        ExpensesStatus.loading => Center(child: ProgressRing()),
        ExpensesStatus.error => Center(
          child: InfoBar(
            title: Text('Failed to load expenses'),
            severity: InfoBarSeverity.error,
          ),
        ),
        ExpensesStatus.loaded => ListView.builder(
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

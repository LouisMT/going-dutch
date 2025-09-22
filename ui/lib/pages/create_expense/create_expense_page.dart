import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/create_expense/create_expense_cubit.dart';
import 'package:going_dutch_ui/pages/create_expense/create_expense_state.dart';
import 'package:going_dutch_ui/repositories/bank_account_repository.dart';
import 'package:going_dutch_ui/repositories/split_rule_repository.dart';
import 'package:going_dutch_ui/route_names.dart';

class CreateExpensePage extends StatelessWidget {
  const CreateExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(title: Text('Create Split Rule')),
      content: BlocProvider(
        create: (_) => CreateExpenseCubit(),
        child: BlocListener<CreateExpenseCubit, CreateExpenseState>(
          listener: (context, state) {
            if (state.status == CreateExpenseStatus.created) {
              context.goNamed(RouteNames.listExpenses);
            }
          },
          child: CreateExpenseContent(),
        ),
      ),
    );
  }
}

class CreateExpenseContent extends StatelessWidget {
  const CreateExpenseContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateExpenseCubit, CreateExpenseState>(
      builder: (context, state) => switch (state.status) {
        CreateExpenseStatus.loading ||
        CreateExpenseStatus.created => Center(child: ProgressRing()),
        CreateExpenseStatus.error => Center(
          child: InfoBar(
            title: Text('Failed to create expense'),
            severity: InfoBarSeverity.error,
          ),
        ),
        CreateExpenseStatus.pending => Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              BlocBuilder<CreateExpenseCubit, CreateExpenseState>(
                builder: (context, state) => InfoLabel(
                  label: 'Split rule:',
                  child: ComboBox<ListSplitRuleItemResponse>(
                    items: state.splitRules
                        .map(
                          (s) => ComboBoxItem<ListSplitRuleItemResponse>(
                            value: s,
                            child: Text(s.name),
                          ),
                        )
                        .toList(),
                    value: state.splitRule,
                    onChanged: (value) {
                      context.read<CreateExpenseCubit>().setSplitRule(value);
                    },
                  ),
                ),
              ),
              BlocBuilder<CreateExpenseCubit, CreateExpenseState>(
                builder: (context, state) => InfoLabel(
                  label: 'Bank account:',
                  child: ComboBox<ListBankAccountItemResponse>(
                    items: state.bankAccounts
                        .map(
                          (s) => ComboBoxItem<ListBankAccountItemResponse>(
                            value: s,
                            child: Text(s.name),
                          ),
                        )
                        .toList(),
                    value: state.bankAccount,
                    onChanged: (value) {
                      context.read<CreateExpenseCubit>().setBankAccount(value);
                    },
                  ),
                ),
              ),
              InfoLabel(
                label: 'Name:',
                child: TextBox(
                  onChanged: (text) {
                    context.read<CreateExpenseCubit>().setName(text);
                  },
                ),
              ),
              InfoLabel(
                label: 'Description:',
                child: TextBox(
                  onChanged: (text) {
                    context.read<CreateExpenseCubit>().setDescription(text);
                  },
                ),
              ),
              InfoLabel(
                label: 'Amount:',
                child: TextBox(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                  ],
                  onChanged: (text) {
                    final amount = double.tryParse(text) ?? 0;
                    context.read<CreateExpenseCubit>().setAmount(amount);
                  },
                ),
              ),
              Button(
                onPressed: () {
                  context.read<CreateExpenseCubit>().submit();
                },
                child: Text('Create'),
              ),
            ],
          ),
        ),
      },
    );
  }
}

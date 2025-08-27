import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/create_bank_account/create_bank_account_cubit.dart';
import 'package:going_dutch_ui/pages/create_bank_account/create_bank_account_state.dart';

class CreateBankAccountPage extends StatelessWidget {
  const CreateBankAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CreateBankAccountCubit(),
      child: BlocListener<CreateBankAccountCubit, CreateBankAccountState>(
        listener: (context, state) {
          if (state is CreateBankAccountFinishedState) {
            context.go('/bank-accounts');
          }
        },
        child: CreateBankAccountContent(),
      ),
    );
  }
}

class CreateBankAccountContent extends StatelessWidget {
  const CreateBankAccountContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            onChanged: (text) {
              context.read<CreateBankAccountCubit>().setName(text);
            },
          ),
          ElevatedButton(
            onPressed: () {
              context.read<CreateBankAccountCubit>().submit();
            },
            child: Text('Create'),
          ),
        ],
      ),
    );
  }
}

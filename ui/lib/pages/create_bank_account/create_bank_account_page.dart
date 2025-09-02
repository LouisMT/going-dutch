import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/create_bank_account/create_bank_account_cubit.dart';
import 'package:going_dutch_ui/pages/create_bank_account/create_bank_account_state.dart';
import 'package:going_dutch_ui/route_names.dart';

class CreateBankAccountPage extends StatelessWidget {
  const CreateBankAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(title: Text('Create Bank Account')),
      content: BlocProvider(
        create: (_) => CreateBankAccountCubit(),
        child: BlocListener<CreateBankAccountCubit, CreateBankAccountState>(
          listener: (context, state) {
            if (state.status == CreateBankAccountStatus.created) {
              context.goNamed(RouteNames.listBankAccounts);
            }
          },
          child: CreateBankAccountContent(),
        ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          InfoLabel(
            label: 'Name:',
            child: TextBox(
              onChanged: (text) {
                context.read<CreateBankAccountCubit>().setName(text);
              },
            ),
          ),
          Button(
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

import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/create_contributor/create_contributor_cubit.dart';
import 'package:going_dutch_ui/pages/create_contributor/create_contributor_state.dart';
import 'package:going_dutch_ui/route_names.dart';

class CreateContributorPage extends StatelessWidget {
  const CreateContributorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(title: Text('Create Contributor')),
      content: BlocProvider(
        create: (_) => CreateContributorCubit(),
        child: BlocListener<CreateContributorCubit, CreateContributorState>(
          listener: (context, state) {
            if (state.status == CreateContributorStatus.created) {
              context.goNamed(RouteNames.listContributors);
            }
          },
          child: CreateContributorContent(),
        ),
      ),
    );
  }
}

class CreateContributorContent extends StatelessWidget {
  const CreateContributorContent({super.key});

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
                context.read<CreateContributorCubit>().setName(text);
              },
            ),
          ),
          Button(
            onPressed: () {
              context.read<CreateContributorCubit>().submit();
            },
            child: Text('Create'),
          ),
        ],
      ),
    );
  }
}

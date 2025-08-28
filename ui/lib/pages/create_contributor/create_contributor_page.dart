import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/create_contributor/create_contributor_cubit.dart';
import 'package:going_dutch_ui/pages/create_contributor/create_contributor_state.dart';

class CreateContributorPage extends StatelessWidget {
  const CreateContributorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GoingDutch - Create Contributor')),
      body: BlocProvider(
        create: (_) => CreateContributorCubit(),
        child: BlocListener<CreateContributorCubit, CreateContributorState>(
          listener: (context, state) {
            if (state is CreateContributorFinishedState) {
              context.go('/contributors');
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
        children: [
          TextFormField(
            onChanged: (text) {
              context.read<CreateContributorCubit>().setName(text);
            },
          ),
          ElevatedButton(
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

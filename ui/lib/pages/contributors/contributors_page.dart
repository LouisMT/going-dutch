import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/contributors/contributors_cubit.dart';
import 'package:going_dutch_ui/pages/contributors/contributors_state.dart';

class ContributorsPage extends StatelessWidget {
  const ContributorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GoingDutch - Contributors'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => context.go('/contributors/create'),
          ),
        ],
      ),
      body: BlocProvider(
        create: (_) => ContributorsCubit(),
        child: ContributorsContent(),
      ),
    );
  }
}

class ContributorsContent extends StatelessWidget {
  const ContributorsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<ContributorsCubit, ContributorsState>(
        builder: (context, state) => switch (state) {
          ContributorsLoadingState() => CircularProgressIndicator(),
          ContributorsErrorState() => Text('Error while loading contributors'),
          ContributorsLoadedState() => ListView(
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

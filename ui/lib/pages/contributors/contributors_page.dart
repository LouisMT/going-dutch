import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/contributors/contributors_cubit.dart';
import 'package:going_dutch_ui/pages/contributors/contributors_state.dart';
import 'package:going_dutch_ui/route_names.dart';

class ContributorsPage extends StatelessWidget {
  const ContributorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(
        title: Text('Contributors'),
        commandBar: CommandBar(
          mainAxisAlignment: MainAxisAlignment.end,
          primaryItems: [
            CommandBarButton(
              icon: Icon(FluentIcons.add),
              label: Text('Create'),
              onPressed: () => context.goNamed(RouteNames.createContributor),
            ),
          ],
        ),
      ),
      content: BlocProvider(
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
        builder: (context, state) => switch (state.status) {
          ContributorsStatus.loading => ProgressRing(),
          ContributorsStatus.error => Text('Error while loading contributors'),
          ContributorsStatus.loaded => ListView.builder(
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
      ),
    );
  }
}

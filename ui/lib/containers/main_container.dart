import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GoingDutch')),
      body: Row(
        children: [
          NavigationRail(
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.savings),
                label: Text('Bank Accounts'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('Contributors'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.rule),
                label: Text('Split Rules'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.money),
                label: Text('Expenses'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.list),
                label: Text('Tabs'),
              ),
            ],
            selectedIndex: navigationShell.currentIndex,
            onDestinationSelected: (index) {
              navigationShell.goBranch(index);
            },
          ),
          VerticalDivider(),
          Expanded(child: navigationShell),
        ],
      ),
    );
  }
}

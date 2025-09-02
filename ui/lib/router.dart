import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/pages/bank_accounts/bank_accounts_page.dart';
import 'package:going_dutch_ui/pages/contributors/contributors_page.dart';
import 'package:going_dutch_ui/pages/create_bank_account/create_bank_account_page.dart';
import 'package:going_dutch_ui/pages/create_contributor/create_contributor_page.dart';
import 'package:going_dutch_ui/pages/create_expense/create_expense_page.dart';
import 'package:going_dutch_ui/pages/create_split_rule/create_split_rule_page.dart';
import 'package:going_dutch_ui/pages/create_tab/create_tab_page.dart';
import 'package:going_dutch_ui/pages/expenses/expenses_page.dart';
import 'package:going_dutch_ui/pages/home/home_page.dart';
import 'package:going_dutch_ui/pages/split_rules/split_rules_page.dart';
import 'package:going_dutch_ui/pages/tabs/tabs_page.dart';
import 'package:going_dutch_ui/route_names.dart';

final List<NavigationPaneItem> _items = [
  _RoutingPaneItem(
    routeName: RouteNames.home,
    routePath: '/',
    routeBuilder: (context, state) => HomePage(),
    icon: Icon(FluentIcons.home),
    title: Text('Home'),
  ),
  _RoutingPaneItemExpander(
    routeName: RouteNames.listBankAccounts,
    routePath: '/bank-accounts',
    routeBuilder: (context, state) => BankAccountsPage(),
    icon: Icon(FluentIcons.savings),
    title: Text('Bank Accounts'),
    items: [
      _RoutingPaneItem(
        routeName: RouteNames.createBankAccount,
        routePath: '/create',
        routeBuilder: (context, state) => CreateBankAccountPage(),
        icon: Icon(FluentIcons.add),
        title: Text('Create'),
      ),
    ],
  ),
  _RoutingPaneItemExpander(
    routeName: RouteNames.listContributors,
    routePath: '/contributors',
    routeBuilder: (context, state) => ContributorsPage(),
    icon: Icon(FluentIcons.contact),
    title: Text('Contributors'),
    items: [
      _RoutingPaneItem(
        routeName: RouteNames.createContributor,
        routePath: '/create',
        routeBuilder: (context, state) => CreateContributorPage(),
        icon: Icon(FluentIcons.add),
        title: Text('Create'),
      ),
    ],
  ),
  _RoutingPaneItemExpander(
    routeName: RouteNames.listSplitRules,
    routePath: '/split-rules',
    routeBuilder: (context, state) => SplitRulesPage(),
    icon: Icon(FluentIcons.business_rule),
    title: Text('Split Rules'),
    items: [
      _RoutingPaneItem(
        routeName: RouteNames.createSplitRule,
        routePath: '/create',
        routeBuilder: (context, state) => CreateSplitRulePage(),
        icon: Icon(FluentIcons.add),
        title: Text('Create'),
      ),
    ],
  ),
  _RoutingPaneItemExpander(
    routeName: RouteNames.listExpenses,
    routePath: '/expenses',
    routeBuilder: (context, state) => ExpensesPage(),
    icon: Icon(FluentIcons.money),
    title: Text('Expenses'),
    items: [
      _RoutingPaneItem(
        routeName: RouteNames.createExpense,
        routePath: '/create',
        icon: Icon(FluentIcons.add),
        title: Text('Create'),
        routeBuilder: (context, state) => CreateExpensePage(),
      ),
    ],
  ),
  _RoutingPaneItemExpander(
    routeName: RouteNames.listTabs,
    routePath: '/tabs',
    icon: Icon(FluentIcons.list),
    title: Text('Tabs'),
    routeBuilder: (context, state) => TabsPage(),
    items: [
      _RoutingPaneItem(
        routeName: RouteNames.createTab,
        routePath: '/create',
        icon: Icon(FluentIcons.add),
        title: Text('Create'),
        routeBuilder: (context, state) => CreateTabPage(),
      ),
    ],
  ),
];

final _routes = _items
    .whereType<_RoutablePaneItem>()
    .map((item) => item.goRoute)
    .toList();

final _routeIndexByName = () {
  final Map<String, int> routeMap = {};
  int currentIndex = 0;

  void traverse(List<NavigationPaneItem> paneItems) {
    for (final paneItem in paneItems) {
      if (paneItem case _RoutablePaneItem(:final routeName)) {
        routeMap[routeName] = currentIndex;
      }

      currentIndex++;

      if (paneItem case PaneItemExpander(:final items)) {
        traverse(items);
      }
    }
  }

  traverse(_items);
  return routeMap;
}();

final router = GoRouter(
  routes: [
    ShellRoute(
      routes: _routes,
      builder: (context, state, child) => NavigationView(
        appBar: NavigationAppBar(title: Text('GoingDutch')),
        pane: NavigationPane(
          selected: _routeIndexByName[GoRouterState.of(context).topRoute!.name],
          items: _items,
        ),
        paneBodyBuilder: (item, _) => FocusTraversalGroup(child: child),
      ),
    ),
  ],
);

abstract class _RoutablePaneItem {
  final String routeName;

  const _RoutablePaneItem({required this.routeName});

  GoRoute get goRoute;
}

class _RoutingPaneItemExpander extends PaneItemExpander
    implements _RoutablePaneItem {
  @override
  final String routeName;
  final String routePath;
  final GoRouterWidgetBuilder routeBuilder;

  _RoutingPaneItemExpander({
    required super.icon,
    required super.title,
    required super.items,
    required this.routeName,
    required this.routePath,
    required this.routeBuilder,
  }) : super(
         body: const SizedBox.shrink(),
         onTap: () => router.goNamed(routeName),
       );

  @override
  GoRoute get goRoute => GoRoute(
    name: routeName,
    path: routePath,
    builder: routeBuilder,
    routes: items
        .whereType<_RoutablePaneItem>()
        .map((item) => item.goRoute)
        .toList(),
  );
}

class _RoutingPaneItem extends PaneItem implements _RoutablePaneItem {
  @override
  final String routeName;
  final String routePath;
  final GoRouterWidgetBuilder routeBuilder;

  _RoutingPaneItem({
    required super.icon,
    required super.title,
    required this.routeName,
    required this.routePath,
    required this.routeBuilder,
  }) : super(
         body: const SizedBox.shrink(),
         onTap: () => router.goNamed(routeName),
       );

  @override
  GoRoute get goRoute =>
      GoRoute(name: routeName, path: routePath, builder: routeBuilder);
}

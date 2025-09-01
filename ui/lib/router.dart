import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:going_dutch_ui/containers/main_container.dart';
import 'package:going_dutch_ui/pages/bank_accounts/bank_accounts_page.dart';
import 'package:going_dutch_ui/pages/contributors/contributors_page.dart';
import 'package:going_dutch_ui/pages/create_bank_account/create_bank_account_page.dart';
import 'package:going_dutch_ui/pages/create_contributor/create_contributor_page.dart';
import 'package:going_dutch_ui/pages/create_split_rule/create_split_rule_page.dart';
import 'package:going_dutch_ui/pages/expenses_page.dart';
import 'package:going_dutch_ui/pages/split_rules/split_rules_page.dart';
import 'package:going_dutch_ui/pages/tabs_page.dart';

final router = GoRouter(
  initialLocation: '/bank-accounts',
  routes: [
    StatefulShellRoute.indexedStack(
      builder:
          (
            BuildContext context,
            GoRouterState state,
            StatefulNavigationShell navigationShell,
          ) {
            return MainContainer(navigationShell: navigationShell);
          },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/bank-accounts',
              builder: (context, state) => BankAccountsPage(),
              routes: [
                GoRoute(
                  path: '/create',
                  builder: (context, state) => CreateBankAccountPage(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/contributors',
              builder: (context, state) => ContributorsPage(),
              routes: [
                GoRoute(
                  path: '/create',
                  builder: (context, state) => CreateContributorPage(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/split-rules',
              builder: (context, state) => SplitRulesPage(),
              routes: [
                GoRoute(
                  path: '/create',
                  builder: (context, state) => CreateSplitRulePage(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/expenses',
              builder: (context, state) => ExpensesPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(path: '/tabs', builder: (context, state) => TabsPage()),
          ],
        ),
      ],
    ),
  ],
);

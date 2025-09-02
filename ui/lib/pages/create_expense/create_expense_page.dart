import 'package:fluent_ui/fluent_ui.dart';

class CreateExpensePage extends StatelessWidget {
  const CreateExpensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(title: Text('Create Expense')),
      content: Text('To do'),
    );
  }
}

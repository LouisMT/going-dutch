import 'package:fluent_ui/fluent_ui.dart';

class CreateTabPage extends StatelessWidget {
  const CreateTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(title: Text('Create Tab')),
      content: Text('To do'),
    );
  }
}

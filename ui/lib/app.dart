import 'package:fluent_ui/fluent_ui.dart';
import 'package:going_dutch_ui/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp.router(
      debugShowCheckedModeBanner: false,
      title: 'GoingDutch',
      theme: FluentThemeData(accentColor: Colors.blue),
      routerConfig: router,
    );
  }
}

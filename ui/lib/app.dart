import 'package:flutter/material.dart';
import 'package:going_dutch_ui/pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Going Dutch',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Going Dutch'),
        ),
        body: HomePage(),
      ),
    );
  }
}

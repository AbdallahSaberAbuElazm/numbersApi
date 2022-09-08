import 'package:clean_architecture_tdd_course/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      title: 'Number Trivia',
      debugShowCheckedModeBanner: false,
      home: NumberTriviaPage(),
    );
  }
}

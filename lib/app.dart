import 'package:flutter/material.dart';
import 'package:projeto_flutter/screens/config_habits_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Configurador de Hábitos by Glauko",
      theme: ThemeData.dark(),
      home: ConfigHabitsScreen(),
    );
  }
}

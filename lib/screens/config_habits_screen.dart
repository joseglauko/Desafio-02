import 'package:flutter/material.dart';
import 'package:projeto_flutter/widgets/custom_input.dart';

class ConfigHabitsScreen extends StatefulWidget {
  const ConfigHabitsScreen({super.key});

  @override
  State<ConfigHabitsScreen> createState() => _ConfigHabitsScreen();
}

class _ConfigHabitsScreen extends State<ConfigHabitsScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 175, 187, 9),
        title: Text("Configurar Hábito"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            CustomInput(
              controller: _controller,
            ),
            ElevatedButton(onPressed: save, child: Text("Salvar Hábito"))
          ],
        ),
      ),
    );
  }

  void save() {
    final String habit = _controller.text;
    //if (!habit.isEmpty) não é ideal em Dart!
    if (habit.isNotEmpty) {
      const snackBar = SnackBar(
          content: Text("Hábito salvo com sucesso!"),
          duration: Duration(seconds: 3),
          backgroundColor: Color.fromARGB(255, 0, 255, 0));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      const snackBar = SnackBar(
          content: Text("Por favor, insira um hábito."),
          duration: Duration(seconds: 2),
          backgroundColor: Color.fromARGB(255, 187, 5, 14));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}

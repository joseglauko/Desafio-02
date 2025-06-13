import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final TextEditingController controller;

  const CustomInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: "Digite o hábito que quer contar: ",
        hintText:
            "Ex.: Beber 8 copos de água; ler 30 minutos; fazer 10 flexões; andar 10 km...",
        border: OutlineInputBorder(),
      ),
    );
  }
}

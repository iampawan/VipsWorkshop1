import 'package:flutter/material.dart';

class AgeCalculator extends StatefulWidget {
  const AgeCalculator({Key? key}) : super(key: key);

  @override
  State<AgeCalculator> createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  int? age;
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Age Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            controller: _ageController,
            decoration:
                const InputDecoration(hintText: "Enter your year of birth"),
          ),
          const SizedBox(
            height: 30,
          ),
          if (age != null) Text("Your age is $age"),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                if (_ageController.text.isNotEmpty) {
                  final userAgeYear = int.tryParse(_ageController.text);
                  age = DateTime.now().year - userAgeYear!;
                  setState(() {});
                }
              },
              child: const Text("Calculate Age")),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            age = null;
            setState(() {});
          },
          child: const Icon(Icons.refresh)),
    );
  }
}

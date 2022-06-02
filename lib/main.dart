import 'package:flutter/material.dart';

import 'age_calculator.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.purple,
    ),
    home: const AgeCalculator(),
  ));
}

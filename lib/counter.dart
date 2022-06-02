import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter VIPS"),
          centerTitle: false,
        ),
        body: Container(
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                const Text(
                  "A",
                  style: TextStyle(fontSize: 40),
                ),
                const Icon(
                  Icons.email,
                  color: Colors.red,
                  size: 40.0,
                ),
                const Text(
                  "B",
                  style: TextStyle(fontSize: 40),
                ),
                const Text(
                  "C",
                  style: TextStyle(fontSize: 40),
                ),
                const Spacer(),
                Text(
                  count.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            count++;
            setState(() {});
          },
        ),
      ),
    );
  }
}

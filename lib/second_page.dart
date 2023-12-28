import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Second Page",
          semanticsLabel: "Welcome to second page",
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            Text("You can go through"),
            Text("the second page"),
            ExcludeSemantics(child: Text("I don't want to read this")),
          ],
        ),
      ),
    );
  }
}

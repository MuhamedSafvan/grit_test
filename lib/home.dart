import 'package:flutter/material.dart';
import 'package:grit_test/second_page.dart';
import 'package:grit_test/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          appBarTitle,
          semanticsLabel: appBarSemanticTitle,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("We will be talking"),
            const Text("about accessibility"),
            const ExcludeSemantics(child: Text("I don't want to read this")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SecondPage()));
                },
                child: const Text("Click me"))
          ],
        ),
      ),
    );
  }
}

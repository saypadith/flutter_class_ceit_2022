import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  String name = "**********";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About us"),
      ),
      body: Container(
          child: Center(
        child: Column(
          children: [
            Text("My name is: " + name),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = "Savath";
                  });
                },
                child: const Text("Show my name"))
          ],
        ),
      )),
    );
  }
}

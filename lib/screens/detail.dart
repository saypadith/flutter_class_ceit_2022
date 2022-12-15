import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int rate = 17500;
  int amount = 500;
  int total = 0;

  // create dummy student list with name
  List<String> students = [
    "John",
    "Jane",
    "Peter",
    "Mary",
    "Jack",
    "Jill",
    "Bob",
    "Alice",
    "Tom",
    "Jerry",
    "Peter",
    "Mary",
    "Jack",
    "Jill",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
              child: Column(
            children: [
              Text("total money is $total kip"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    total = rate * amount;
                  });
                },
                child: Text("Calculate"),
              ),
              const SizedBox(height: 32),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: students.length,
                  itemBuilder: (context, inx) {
                    return ListTile(
                      title: Text(students[inx]),
                    );
                  })
            ],
          )),
        ),
      ),
    );
  }
}

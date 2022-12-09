import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int rate = 17500;
  int amount = 150;
  int total = 0;
  // create a list of students
  List students = [
    "John",
    "Jane",
    "Mary",
    "Peter",
    "Paul",
    "Mark",
    "Luke",
    "James",
    "Andrew",
    "Thomas",
    "Simon",
    "Judas",
    "Matthew",
    "James",
    "John",
    "Philip",
    "Bartholomew",
    "Thomas",
    "Matthew",
    "James",
    "Simon",
    "Judas",
    "John",
    "James",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  "Money exchange rate: $rate Kip",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Total amount of your exchange: \$$amount",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Total amount you receive is: $total Kip",
                  style: TextStyle(fontSize: 18),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      total = rate * amount;
                    });
                  },
                  child: Text("Caculate"),
                ),
                ListView.builder(
                    itemCount: students.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(students[index]),
                      );
                    })
              ],
            ),
          ),
        ));
  }
}

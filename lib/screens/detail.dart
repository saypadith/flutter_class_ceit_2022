import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final int rate = 17500;
  final int amount = 100;
  int total = 0;

  // create student list with fullname and student id

  final List students = [
    "Student 1",
    "Student 2",
    "Student 3",
    "Student 4",
    "Student 5",
    "Student 6",
    "Student 7",
    "Student 8",
    "Student 9",
    "Student 10",
    "Student 11",
    "Student 12",
    "Student 13",
    "Student 14",
    "Student 15",
    "Student 16",
    "Student 17",
    "Student 18",
    "Student 19",
    "Student 20",
    "Student 21",
    "Student 22",
    "Student 23",
    "Student 24",
    "Student 25",
    "Student 26",
    "Student 27",
    "Student 28",
    "Student 29",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   "ຈຳນວນເງິນທີ່ເຮົາຈະແລກປ່ຽນ: $total ກີບ",
                //   style: TextStyle(fontSize: 18),
                // ),
                // ElevatedButton(
                //   onPressed: () {
                //     setState(() {
                //       total = rate * amount;
                //     });
                //   },
                //   child: Text("Caculate"),
                // ),

                // Image.asset(
                //   "assets/images/img1.jpg",
                //   height: 200,
                // ),
                // Image.asset(
                //   "assets/images/img2.jpg",
                //   height: 200,
                // ),

                // ListView.builder(
                //     shrinkWrap: true,
                //     itemCount: students.length,
                //     itemBuilder: (context, index) {
                //       return Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Text(students[index]),
                //       );
                //     })
                // load image from lorem image

                Image.network(
                  'https://picsum.photos/seed/picsum/200/300',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 30),
                Text(
                  "Our Students",
                  style: TextStyle(fontSize: 24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              NetworkImage('https://i.pravatar.cc/300'),
                          backgroundColor: Colors.transparent,
                        ),
                        Text("Jackson"),
                      ],
                    ),
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              NetworkImage('https://i.pravatar.cc/400'),
                          backgroundColor: Colors.transparent,
                        ),
                        Text("Smith"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              NetworkImage('https://i.pravatar.cc/500'),
                          backgroundColor: Colors.transparent,
                        ),
                        Text("John"),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 14),
                Text(
                  "Hospitals",
                  style: TextStyle(fontSize: 24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              NetworkImage('https://i.pravatar.cc/700'),
                          backgroundColor: Colors.transparent,
                        ),
                        Text("Jackson"),
                      ],
                    ),
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              NetworkImage('https://i.pravatar.cc/100'),
                          backgroundColor: Colors.transparent,
                        ),
                        Text("Smith"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              NetworkImage('https://i.pravatar.cc/200'),
                          backgroundColor: Colors.transparent,
                        ),
                        Text("John"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

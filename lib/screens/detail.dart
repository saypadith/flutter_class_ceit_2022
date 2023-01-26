import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int rate = 17500;
  int amount = 500;
  int total = 0;
  String? gender;

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

  getGender() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.getString("gender") != null) {
      setState(() {
        gender = preferences.getString("gender");
      });
    }
  }

  setGender(String gen) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("gender", gen);
  }

  @override
  void initState() {
    getGender();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   "ຈຳນວນເງິນທີ່ແລກປ່ຽນ: $total ກີບ",
              //   style: TextStyle(fontSize: 24),
              // ),
              // ElevatedButton(
              //   onPressed: () {
              //     setState(() {
              //       total = rate * amount;
              //     });
              //   },
              //   child: Text("Calculate"),
              // ),
              // const SizedBox(height: 32),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Column(
              //       children: [
              //         Icon(Icons.fingerprint, size: 80),
              //         Text("Fingerprint"),
              //       ],
              //     ),
              //     // Icon(Icons.gamepad, size: 80),
              //     Column(
              //       children: [
              //         Icon(Icons.golf_course, size: 80),
              //         Text("Golf"),
              //       ],
              //     ),
              //   ],
              // ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
                child: Image.network(
                  "https://picsum.photos/250",
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: 32),
              Column(
                children: [
                  RadioListTile(
                    title: Text("Male"),
                    value: "male",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                        setGender(gender!);
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("Female"),
                    value: "female",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                        setGender(gender!);
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("Other"),
                    value: "other",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                        setGender(gender!);
                      });
                    },
                  )
                ],
              ),
              Text("Popular Courses",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/300'),
                        backgroundColor: Colors.transparent,
                      ),
                      Text("Jonh Doe"),
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
                      Text("Jackson"),
                    ],
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/200'),
                        backgroundColor: Colors.transparent,
                      ),
                      Text("Smith"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              Text("VIP Students",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 12),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //       children: const [
              //         CircleAvatar(
              //           radius: 50.0,
              //           backgroundImage:
              //               NetworkImage('https://i.pravatar.cc/400'),
              //           backgroundColor: Colors.transparent,
              //         ),
              //         Text("Jonh Doe"),
              //       ],
              //     ),
              //     Column(
              //       children: const [
              //         CircleAvatar(
              //           radius: 50.0,
              //           backgroundImage:
              //               NetworkImage('https://i.pravatar.cc/500'),
              //           backgroundColor: Colors.transparent,
              //         ),
              //         Text("Jackson"),
              //       ],
              //     ),
              //     Column(
              //       children: const [
              //         CircleAvatar(
              //           radius: 50.0,
              //           backgroundImage:
              //               NetworkImage('https://i.pravatar.cc/600'),
              //           backgroundColor: Colors.transparent,
              //         ),
              //         Text("Smith"),
              //       ],
              //     ),
              //   ],
              // ),
              SizedBox(height: 32),
              Container(
                // create a container with rounded corner with shadow
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(48),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      Icon(Icons.g_translate, size: 80),
                      SizedBox(width: 24),
                      Text("Translate", style: TextStyle(fontSize: 32)),
                    ],
                  ),
                ),
              )
              // Image.asset(
              //   "assets/images/img1.jpg",
              //   height: 200,
              // ),

              // ListView.builder(
              //     shrinkWrap: true,
              //     itemCount: students.length,
              //     itemBuilder: (context, inx) {
              //       return ListTile(
              //         title: Text(students[inx]),
              //       );
              //     })
            ],
          )),
        ),
      ),
    );
  }
}

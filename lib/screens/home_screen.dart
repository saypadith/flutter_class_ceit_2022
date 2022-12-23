import 'package:flutter/material.dart';
import 'package:flutter_starter/screens/about_us.dart';
import 'package:flutter_starter/screens/detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.amber,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Image.network(
                  "https://picsum.photos/250",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: const Center(
                      child: Text(
                    "10,000K",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  )),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Mobile app for 3IT2",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, \n\nremaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreen()));
                },
                child: const Text("Click me"),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUsScreen()));
                },
                child: const Text("About us"),
              )
            ],
          )
        ],
      )),
    );
  }
}

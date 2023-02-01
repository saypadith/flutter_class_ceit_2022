import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  bool isFavorite = false;

  @override
  void initState() {
    getFavorite();
    super.initState();
  }

  void getFavorite() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getBool('isFavorite') != null) {
      setState(() {
        isFavorite = prefs.getBool('isFavorite')!;
      });
    }
  }

  void setFavorite() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isFavorite', isFavorite);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Container(
          child: Column(
        children: [
          // image from lorem image
          Image.network(
            'https://picsum.photos/250?image=9',
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Luang Prabang",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text("Tat Kuang Si Waterfall",
                        style: TextStyle(fontSize: 14)),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                            setFavorite();
                          });
                        },
                        icon: Icon(Icons.star,
                            color: isFavorite ? Colors.red : Colors.grey)),
                    Text("41")
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      )),
    );
  }
}

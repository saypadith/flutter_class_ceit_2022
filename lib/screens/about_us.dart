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
            // Text("My name is: " + name),
            // ElevatedButton(
            //     onPressed: () {
            //       setState(() {
            //         name = "Savath";
            //       });
            //     },
            //     child: const Text("Show my name"))

            Image.network(
              "https://picsum.photos/400",
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Luangprabang Province",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Kuangsi Waterfall"),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      Text("40")
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.call,
                        size: 50,
                        color: Colors.lightBlue,
                      ),
                      Text("CALL")
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.pin_drop,
                        size: 50,
                        color: Colors.lightBlue,
                      ),
                      Text("LOCATION")
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.share,
                        size: 50,
                        color: Colors.lightBlue,
                      ),
                      Text("SHARE")
                    ],
                  ),
                ],
              ),
            ),
            // create lorem ipsum text widget
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 48),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor, nisl eget ultricies tincidunt, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies tin eget aliquam nunc nisl eget nunc. Donec auctor, nislDonec auctor, nisl eget ultricies tincidunt, nunc nisl aliquam nisl, eget aliquam nunc nisl eget nunc. Donec auctor, nisl eget ultricies tincidunt, nunc nil eget nunc. Donec auctor, nisl eget ultricies tincidunt, nunc nisl aliquam n",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 48),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.heart_broken_sharp,
                          color: Colors.green,
                        ),
                        SizedBox(width: 12),
                        Text("BEAMS",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                        "lorem ipsum dolor sit amet consectetur adipiscing elit donec auctor nisl eget ultricies tincidunt nunc nisl aliquam nisl eget aliquam nunc nisl eget nunc",
                        style: TextStyle(color: Colors.white)),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text("EXPLORE BEAMS",
                            style: TextStyle(color: Colors.green)),
                        Icon(Icons.arrow_forward, color: Colors.green)
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Listing'),
      ),
      // body: const Center(
      //   // child: Text(
      //   //   'Hello, World!',
      //   //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //   // ),
      //   child: Text.rich(
      //     TextSpan(
      //       children: <TextSpan>[
      //         TextSpan(
      //             text: "Hello ",
      //             style: TextStyle(fontStyle: FontStyle.italic)),
      //         TextSpan(
      //             text: "World", style: TextStyle(fontWeight: FontWeight.bold)),
      //       ],
      //     ),
      //   ),
      // ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: const <Widget>[
          ProductBox(
            name: "Iphone",
            description: "13 Pro Max",
            price: 100,
            image: "iphone.jpeg",
          ),
          ProductBox(
            name: "Pixel",
            description: "Google Pixel 7s",
            price: 100,
            image: "pixel.jpg",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/$image"),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(description),
                    Text("Price: $price"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class Shoes extends StatelessWidget {
  final String imagePath;
  final String nameShop;
  final String rating;
  final String jamBuka;
  const Shoes(
      {Key? key,
      required this.imagePath,
      required this.nameShop,
      required this.rating,
      required this.jamBuka})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 240,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Image.asset(imagePath, fit: BoxFit.cover))
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 10,
                child: SizedBox(
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nameShop),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(
                              width: 5,
                            ),
                            Text(rating),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.access_time, color: Colors.grey),
                            SizedBox(
                              width: 5,
                            ),
                            Text(jamBuka)
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    height: 140, width: double.infinity, color: Colors.white),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.topLeft,
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://i0.wp.com/studiolorier.com/wp-content/uploads/2018/10/Profile-Round-Sander-Lorier.jpg?ssl=1")),
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                          color: Colors.white,
                                          style: BorderStyle.solid,
                                          width: 2))),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "SHOES",
                              )
                            ],
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.notifications_active,
                                color: Colors.white,
                                size: 30,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
            ),
            Shoes(
              imagePath: "assets/produk1.png",
              nameShop: "Nike SB Zoom Blazer",
              rating: "Mid Premieum",
              jamBuka: "8.795",
            ),
            Shoes(
              imagePath: "assets/produk2.png",
              nameShop: "Nike Zoom Pegasus",
              rating: "Mens Roud Running Shoes",
              jamBuka: "9.995",
            ),
            Shoes(
              imagePath: "assets/produk2.png",
              nameShop: "Nike ZoomX Vaporfly",
              rating: "Mens Road Racing Shoe",
              jamBuka: "19.695",
            ),
          ],
        )),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

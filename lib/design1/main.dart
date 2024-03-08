import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:badges/badges.dart' as badge;
void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp();

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int index = 0;

  int _currentIndex = 0;
  List<String> paths = [
    "assets/assets/Frame 24.png",
    "assets/assets/Frame 24.png",
    "assets/assets/Frame 24.png"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset(
            "assets/assets/logo.png",
            fit: BoxFit.cover,
          ),
          elevation: 0,
          actions: [
            badge.Badge(
              position: badge.BadgePosition.topEnd(top: 0, end: 2),

              badgeContent: Text(
                '',
                style: TextStyle(color: Colors.white),
              ),
              child: Icon(Icons.notifications_none, color: Colors.black),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: const Row(
                  children: [
                    Text("Hello,", style: TextStyle(fontSize: 18)),
                    Text("Sara Rose",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Text(
                  "How are you feeling today ?",style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(13),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/assets/Frame 10 (2).png",
                          ),
                          radius: 30,
                        ),
                        Text("Love"),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(13),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/assets/Frame 10.png",
                          ),
                          radius: 30,
                        ),
                        Text("Cool"),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(13),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/assets/Frame 8 (1).png",
                          ),
                          radius: 30,
                        ),
                        Text("Happy"),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(13),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/assets/Frame 12.png",
                          ),
                          radius: 30,
                        ),
                        Text("Sad"),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(13),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Feature",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(color: Colors.green,fontSize: 15),
                        ),
                        InkWell(
                            child: Icon(Icons.arrow_forward_ios, size: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 170.0,
                        onPageChanged: (newindex, reason) {
                          setState(() {
                            _currentIndex = newindex;
                          });
                        },
                      ),
                      items: paths.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(paths[_currentIndex]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: _currentIndex,
                      count: 3,
                      effect: const JumpingDotEffect(
                       radius: 10,
                        dotHeight: 8,
                        dotWidth: 8,



                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.all(13),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Exercise",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                    Row(
                      children: [
                        Text(
                          "See more",
                          style: TextStyle(color: Colors.green,fontSize: 15),
                        ),
                        InkWell(
                            child: Icon(Icons.arrow_forward_ios, size: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/assets/Frame 31.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/assets/Frame 35.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/assets/Frame 35 (1).png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 55,
                      width: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/assets/Frame 33.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: Colors.white),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label:"."),
              BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "."),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: ".",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity),
                label: ".",
              ),
            ],
            currentIndex: index,
            onTap: (newindex) {
              index = newindex;
              setState(() {});
            },
            showSelectedLabels: true,
            showUnselectedLabels: false,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
  Color colorchoise = Color(0xffE4E7EC);
  int _currentIndex = 0;
  List<String> paths = [
    "assets/assets/Frame 3466530 (1).png",
    "assets/assets/Frame 3466530.png",
    "assets/assets/Frame 3466530.png"
  ];

  List<bool> isSelected = [true, false, false, false]; // Maintain the selected state

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset(
            "assets/assets/logo (1).png",
            fit: BoxFit.cover,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 44,
                margin: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      color: Color(0xff667085),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Articles, Video, Audio and More,...",
                    hintStyle: const TextStyle(color: Color(0xff667085)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildInkWellContainer("Discover", 0),
                    buildInkWellContainer("News", 1),
                    buildInkWellContainer("Most Viewed", 2),
                    buildInkWellContainer("Saved", 3),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(13),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hot topics",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xff5925DC), fontSize: 15),
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
                child: const Text("Get Tips",
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(
                    left: 24, right: 24, bottom: 12),
                height: 196,
                width: 326,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/assets/Frame 3466535.png",),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Container(
                margin: const EdgeInsets.all(13),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cycle Phases and Period",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                              color: Color(0xff5925DC), fontSize: 15),
                        ),
                        InkWell(
                            child: Icon(Icons.arrow_forward_ios, size: 12)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: Colors.white),
          child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month),
                  label: "today",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.grid_view), label: "Insights"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble),
                  label: "Chat",
                ),
              ],
              currentIndex: index,
              onTap: (newindex) {
                index = newindex;
                setState(() {});
              },
              selectedItemColor: Color(0xff7F56D9),
              unselectedItemColor: Colors.black),
        ),
      ),
    );
  }

  Widget buildInkWellContainer(String title, int itemIndex) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: isSelected[itemIndex] ? Color(0xffD6BBFB) : Color(0xffE4E7EC),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(title),
      ),
      onTap: () {
        setState(() {
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = (i == itemIndex);
          }
        });
      },
    );
  }
}

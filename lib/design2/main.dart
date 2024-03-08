import 'package:flutter/material.dart';
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




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/assets/Frame 40.png",
                      fit: BoxFit.cover,
                    ),
                    badge.Badge(
                      position: badge.BadgePosition.topEnd(top: 0, end: 2),
                      child: const Icon(Icons.notifications_none, color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(13),
                  padding: const EdgeInsets.all(13),
                  width: 326,
                  height: 82,
                  color: const Color(0xffD9D9D9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/assets/Frame 3466504.png"),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text(
                            "81pdm",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.white,
                      ),
                      Column(
                        children: [
                          Image.asset("assets/assets/Frame 3466504 (1).png"),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text("32,5%",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.white,
                      ),
                      Column(
                        children: [
                          Image.asset("assets/assets/Frame 3466504 (1).png"),
                          const SizedBox(
                            height: 7,
                          ),
                          const Text("1000 cal",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  child: const Text(
                    "Workout Programs",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
            elevation: 0,
            toolbarHeight: 260,
            bottom: const TabBar(
              tabs: [
                Tab(text: "All Type",),
                Tab(text: "Full Body",),
                Tab(text: "Upper",),
                Tab(text: "Lower",),
              ],
              labelColor: Color(0xff363F72),
              labelStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),
              indicatorColor:Color(0xff363F72),
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(children: [
                 Container(
                   margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                   height: 174,
                   width: 326,
                   decoration: const BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage("assets/assets/Plank.png",),
                       fit: BoxFit.cover
                     )
                   ),
                 ),
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ],),
              ),
              SingleChildScrollView(
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank.png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ],),
              ),
              SingleChildScrollView(
                child: Column(children: [
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank.png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ],),
              ),
              SingleChildScrollView(
                child: Column(children: [
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank.png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin:const EdgeInsets.only(left: 24,right: 24,top: 24),
                    height: 174,
                    width: 326,
                    decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/assets/Plank (1).png",),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ],),
              ),
            ],
          ),
          bottomNavigationBar: Theme(
            data: ThemeData(canvasColor: Colors.white),
            child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "."),
                BottomNavigationBarItem(icon: Icon(Icons.navigation), label: ""),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart),
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
              selectedItemColor: Color(0xff7F56D9),
              unselectedItemColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

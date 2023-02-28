import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:koushik/pages/home.dart';
import 'package:koushik/pages/login.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});
  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final pageController = PageController();
  final List<Widget> pageList = [LoginPage(), HomePage()];

  final List<IconData> iconList = [
    Icons.home,
    Icons.settings,
  ];
  var _activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_activeIndex],
      // body: SafeArea(
      //     child: Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           Row(children: [
      //             Text(
      //               'My',
      //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //             ),
      //             Text(
      //               " Cards",
      //               style: TextStyle(fontSize: 24),
      //             )
      //           ]),
      //           GestureDetector(
      //             child: Container(
      //               padding: EdgeInsets.all(8),
      //               decoration: BoxDecoration(
      //                   color: Colors.grey[300], shape: BoxShape.circle),
      //               child: Icon(
      //                 Boxicons.bx_plus,
      //                 size: 24,
      //               ),
      //             ),
      //             onTap: () {
      //               print("Clicked");
      //             },
      //           )
      //         ],
      //       ),
      //     ),

      //     //Slider view
      //     Container(
      //       height: 200,
      //       child: PageView(
      //         controller: pageController,
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 15),
      //             child: MyCard(
      //               balance: 5250.20,
      //               cardNumber: 12345678,
      //               color: Colors.blue[800],
      //               expiryMonth: 10,
      //               expiryYear: 24,
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 15),
      //             child: MyCard(
      //               balance: 5250.20,
      //               cardNumber: 12345678,
      //               color: Colors.lightBlue[400],
      //               expiryMonth: 10,
      //               expiryYear: 24,
      //             ),
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 15),
      //             child: MyCard(
      //               balance: 5250.20,
      //               cardNumber: 12345678,
      //               color: Colors.red[400],
      //               expiryMonth: 10,
      //               expiryYear: 24,
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //     //Slider view end
      //     SizedBox(
      //       height: 20,
      //     ),
      //     SmoothPageIndicator(
      //       controller: pageController,
      //       count: 3,
      //       effect: ExpandingDotsEffect(
      //           dotWidth: 8,
      //           dotHeight: 8,
      //           activeDotColor: Colors.grey.shade800),
      //     ),
      //   ],
      // )),
      /////////////////////////////////////////////////////
      // bottomNavigationBar: BottomAppBar(
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.home),
      //           iconSize: 22,
      //         ),
      //         IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.settings),
      //           iconSize: 22,
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _activeIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        // leftCornerRadius: 32,
        // rightCornerRadius: 32,
        onTap: (index) => setState(() => _activeIndex = index),
        //other params
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.lock), label: "Login"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home")
      //   ],
      //   onTap: (int index) {
      //     setState(() {
      //       _activeIndex = index;
      //     });
      //   },
      // ),

      //////////////////////////////////////////////////////
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.money),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

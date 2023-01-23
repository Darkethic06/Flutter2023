import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:koushik/views/myCard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text(
                    'My',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Cards",
                    style: TextStyle(fontSize: 24),
                  )
                ]),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.grey[300], shape: BoxShape.circle),
                  child: Icon(
                    Boxicons.bx_plus,
                    size: 24,
                  ),
                )
              ],
            ),
          ),

          //Slider view
          Container(
            height: 200,
            child: PageView(
              controller: pageController,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: MyCard(
                    balance: 5250.20,
                    cardNumber: 12345678,
                    color: Colors.blue[800],
                    expiryMonth: 10,
                    expiryYear: 24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: MyCard(
                    balance: 5250.20,
                    cardNumber: 12345678,
                    color: Colors.lightBlue[400],
                    expiryMonth: 10,
                    expiryYear: 24,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: MyCard(
                    balance: 5250.20,
                    cardNumber: 12345678,
                    color: Colors.red[400],
                    expiryMonth: 10,
                    expiryYear: 24,
                  ),
                )
              ],
            ),
          ),
          //Slider view end
          SizedBox(
            height: 20,
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: ExpandingDotsEffect(
                dotWidth: 8,
                dotHeight: 8,
                activeDotColor: Colors.grey.shade800),
          )
        ],
      )),
    );
  }
}

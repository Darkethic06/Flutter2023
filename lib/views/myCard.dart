import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard(
      {required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Balance",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "₹" + balance.toString(),
            style: TextStyle(
                fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardNumber.toString(),
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                expiryMonth.toString() + "/" + expiryYear.toString(),
                style: TextStyle(fontSize: 16, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}

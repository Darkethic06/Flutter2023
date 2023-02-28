import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:koushik/pages/detail.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Hero(
            tag: "background",
            child: Image(
              height: 350,
              width: MediaQuery.of(context).size.width,
              image: AssetImage(
                'assets/login.jpg',
              ),
            ),
          ),
        ),
      )),
    );
  }
}

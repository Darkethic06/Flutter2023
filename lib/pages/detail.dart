import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text("Details page"),
              Hero(
                tag: "background",
                child: Image(
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(
                    'assets/login.jpg',
                  ),
                ),
              ),
              Text(
                  "hello there is a image of a lock Icon.hich is a illustration")
            ],
          ),
        ),
      ),
    );
  }
}

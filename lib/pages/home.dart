import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
        centerTitle: true,
        leading: Icon(Icons.notifications_active_rounded),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shop),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.boy_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.grey[200],
            // height: MediaQuery.of(context).size.height / 3,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // child: Text(
            //   "Hello World",
            //   style: TextStyle(
            //       color: Colors.blue,
            //       fontFamily: "Roboto",
            //       fontSize: 24,
            //       fontWeight: FontWeight.bold),
            // ),

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: Text("Mobile Number"),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 2, style: BorderStyle.solid),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        label: Text("Email"),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              style: BorderStyle.solid,
                              color: Colors.yellow),
                        ),
                        labelStyle: TextStyle(color: Colors.yellow)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

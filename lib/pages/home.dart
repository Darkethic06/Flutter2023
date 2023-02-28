import 'package:flutter/material.dart';
import 'package:koushik/pages/customAppBar.dart';
import 'package:koushik/pages/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("First App"),
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Icon(Icons.notifications_active_rounded),
      //     )
      //   ],
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //         color: Colors.amber[200],
      //         borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(20),
      //             bottomRight: Radius.circular(20))),
      //   ),
      //   toolbarHeight: 80,
      // ),

      appBar: CustomAppBar(
        title: "FirstApp",
        onMenuActionTap: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SettingsPage()))
        },
        showActionIcon: true,
        leading: Icon(Icons.home),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
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

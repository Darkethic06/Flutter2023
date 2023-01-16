import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        child: Center(
            child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Image(
            height: 350,
            width: MediaQuery.of(context).size.width,
            image: AssetImage(
              'assets/login.jpg',
            ),
          ),
          Text(
            "Login",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  label: Text("Email "),
                  prefixIcon: Icon(Icons.email),
                  floatingLabelBehavior: FloatingLabelBehavior.never),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                suffixText: "forgot?",
                label: Text("Password"),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  // foreground
                  elevation: 0),
              onPressed: () {
                setState(() {
                  print(controller.text);
                });
              },
            ),
          )
        ])),
      ),
    )));
  }
}

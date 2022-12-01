import 'package:flutter/material.dart';

import 'home_ui.dart';

class bmi_ui extends StatelessWidget {
  const bmi_ui({super.key});
  static String _title = 'Flutter Code Sample ';

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: TextStyle(fontSize: 40),
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 32, 54),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 32, 54),
        title: Text("Ден соолук индекси (BMI)"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Text(
                    "Бобр ака ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
              height: 400,
              width: 800,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 220,
          ),
          Container(
            color: Colors.black,
            child: ElevatedButton(
              style: style,
              onPressed: (() {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => HomeUi()),
                );
              }),
              child: Text("Считай Заново",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
          )
        ],
      ),
    );
  }
}

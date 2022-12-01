import 'package:flutter/material.dart';
import 'package:flutter_application_09_bmi/bmi_ui.dart';

enum Gender {
  male,
  femaly,
}

class HomeUi extends StatefulWidget {
  static String title = "Flutter Code Sample";
  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  Gender? selectedGender;
  int height = 170;
  double weight = 60;
  int age = 20;

  Color kActiveColor = Color.fromARGB(255, 35, 40, 192);
  Color kInActiveColor = Color.fromARGB(255, 24, 24, 61);

  int _counter1 = 10;

  get style => null;
  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  int _counter2 = 0;
  void _incrementCounter2() {
    setState(() {
      _counter1--;
    });
  }

  int _counter3 = 10;
  void _incrementCounter3() {
    setState(() {
      _counter3++;
    });
  }

  int _counter4 = 0;
  void _incrementCounter4() {
    setState(() {
      _counter3--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(221, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Bmi Calculator',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        selectedGender = Gender.male;
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedGender == Gender.male
                          ? Colors.blue
                          : kInActiveColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    padding: EdgeInsets.all(50),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 90,
                          color: Colors.white,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () {
                    setState(
                      () {
                        selectedGender = Gender.femaly;
                      },
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: selectedGender == Gender.femaly
                          ? Colors.pink
                          : kInActiveColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    padding: EdgeInsets.all(50),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 90,
                          color: Colors.white,
                        ),
                        Text(
                          'Femaly',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 1, 20, 36),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "HEIGHT",
                    style: TextStyle(fontSize: 30, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "$weightСМ,",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 250, 250),
                        fontSize: 26),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Slider(
                    inactiveColor: Colors.grey,
                    activeColor: Colors.white,
                    thumbColor: Colors.red,
                    value: weight,
                    min: 10,
                    max: 220,
                    divisions: 20,
                    label: weight.round().toString(),
                    onChanged: (double newvalue) {
                      setState(
                        () {
                          weight = newvalue;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 230,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 1, 20, 36),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "WEIGHT",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "$_counter1",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: _incrementCounter1,
                            tooltip: '$_counter1,',
                            icon: Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: _incrementCounter2,
                            tooltip: '$_counter2,',
                            icon: Icon(
                              Icons.remove,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 230,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 1, 20, 36),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "AGE",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "$_counter3",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: _incrementCounter3,
                            tooltip: '$_counter3,',
                            icon: Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: _incrementCounter4,
                            tooltip: '$_counter4,',
                            icon: Icon(
                              Icons.remove,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            ElevatedButton(
              style: style,
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bmi_ui()),
                );
              }),
              child: Text(
                "РЕЗУЛЬТАТ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

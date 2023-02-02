import 'package:bmi_calculator/widgets/left.dart';
import 'package:flutter/material.dart';

import '../widgets/right.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Initialized variables for the app
  double height = 0;
  double weight = 0;
  double bmiResult = 0;
  String textBodyWeight = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "BMI Calculator",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.yellow,
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        //For best practice it should start like this.
        body: SingleChildScrollView(
          child: Column(
            //We use this to align widgets vertically
            children: [
              const SizedBox(height: 20),
              //This is like a margin between widgets
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 130,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 35,
                          color: Colors.yellow.shade200),
                      onChanged: (values) {
                        setState(() {
                          height = double.parse(values);
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height",
                        hintStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 35,
                          color: Colors.yellow.shade200),
                      onChanged: (values) {
                        setState(() {
                          weight = double.parse(values);
                        });
                      },
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight",
                        hintStyle: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellowAccent,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              //For the Text as Button
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    bmiResult = (weight / (height * height));
                    if (bmiResult > 25) {
                      textBodyWeight = "You're over weight.";
                    } else if (bmiResult >= 18.5 && bmiResult <= 25) {
                      textBodyWeight = "Your body weight is normal.";
                    } else {
                      textBodyWeight = "You're over weight.";
                    }
                  });
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              Text(
                bmiResult.toStringAsFixed(2),
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellowAccent),
              ),

              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: textBodyWeight.isNotEmpty,
                child: Text(
                  textBodyWeight,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent),
                ),
              ),

              const SizedBox(
                height: 40,
              ),
              const RightScreen(
                barWidth: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              const RightScreen(
                barWidth: 95,
              ),
              const SizedBox(
                height: 20,
              ),
              const RightScreen(
                barWidth: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              const LeftScreen(
                barWidth: 50,
              ),
              const SizedBox(
                height: 60,
              ),
              const LeftScreen(
                barWidth: 50,
              ),
            ],
          ),
        ));
  }
}

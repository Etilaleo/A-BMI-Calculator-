import 'package:flutter/material.dart';

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
          child: Column( //We use this to align widgets vertically
            children: [
              const SizedBox(height: 20), //This is like a margin between widgets
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    width: 130,
                    child: TextField(

                    ),
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}

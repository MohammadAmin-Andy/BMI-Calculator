import 'package:bmi_calculator/page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void navigatToPages(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 218, 139),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'BMI calculator',
          style: TextStyle(
              color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 23),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' Do you want to take BMI test?',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  shadows: [
                    Shadow(color: Colors.black, blurRadius: 3),
                  ],
                ),
              ),
              SizedBox(height: 50),
              ClipRRect(
                child: Image(
                  image: AssetImage('images/BMI.png'),
                ),
                borderRadius: BorderRadius.circular(11),
              ),
              SizedBox(height: 30),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: Colors.red,
                    side: BorderSide(
                      color: Color.fromARGB(255, 0, 86, 144),
                    ),
                    //shadowColor: Colors.black,elevation: 2
                    minimumSize: Size(130, 40)),
                onPressed: () {
                  navigatToPages(
                    context,
                    BmiPage(),
                  );
                },
                child: Text("Let's go"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

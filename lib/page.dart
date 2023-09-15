import 'package:bmi_calculator/shapes/leftside.dart';
import 'package:bmi_calculator/shapes/rightside.dart';
import 'package:flutter/material.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({Key? key}) : super(key: key);

  @override
  State<BmiPage> createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  final hieghtController = TextEditingController();
  final weightController = TextEditingController();

  double result = 0;
  String detail = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'How much is your BMI?',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    //height: 100,
                    child: TextField(
                      controller: weightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22, color: Colors.deepOrange),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Weight(KG)',
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    //height: 100,
                    child: TextField(
                      controller: hieghtController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22, color: Colors.deepOrange),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'hieght(cm)',
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),
              InkWell(
                onTap: () {
                  final weight = double.parse(weightController.text);
                  final hieght = double.parse(hieghtController.text);
                  setState(() {
                    result = weight / ((hieght / 100) * (hieght / 100));
                    if (result > 25) {
                      detail = ' You are overweight!!';
                    } else if (result < 18.5) {
                      detail = 'You are underweight';
                    } else {
                      detail = ' Your weight is normal';
                    }
                  });
                },
                child: Text(
                  'Calculat BMI !!',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
              ),
              SizedBox(height: 30),
              Text('${result.toStringAsFixed(2)}'),
              SizedBox(height: 20),
              Text('$detail')
              //LeftShape(width: 400),
              //SizedBox(height: 5),
              //RightShape(wight: 100),
            ],
          ),
        ),
      ),
    );
  }
}

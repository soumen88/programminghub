import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:programminghub/bmicalc/bmi_calc_input_field.dart';

@RoutePage()
class BmiCalculatorScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BmiCalculatorScreenState();
  }

}

class _BmiCalculatorScreenState extends State<BmiCalculatorScreen>{
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double bmiIndex = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculator"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BmiCalcInputField(
                    inputHint: "Enter Body Weight (in kg)",
                    errorToDisplay: "Invalid input for weight",
                    inputController: weightController,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  BmiCalcInputField(
                    inputHint: "Enter Body height (in m)",
                    errorToDisplay: "Invalid input for height",
                    inputController: heightController,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: (){
                        if(_formKey.currentState != null && _formKey.currentState!.validate()){
                            print("Weight input ${weightController.text}");
                            print("Height input ${heightController.text}");
                            double weightInKg = double.parse(weightController.text);
                            double heightInMeters = double.parse(heightController.text);
                            bmiIndex = weightInKg / (heightInMeters * heightInMeters);
                            setState(() {

                            });
                        }
                      },
                      child: Text("Calculate BMI")
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 200,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightGreen
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "BMI Index:- ${bmiIndex.toStringAsFixed(2)}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24
                      ),
                    ),
                  ),
                ],
              )
          )
        )
      ),
    );
  }

}
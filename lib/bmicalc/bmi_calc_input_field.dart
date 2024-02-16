import 'package:flutter/material.dart';

class BmiCalcInputField extends StatelessWidget{
  String inputHint;
  String errorToDisplay;
  TextEditingController inputController;

  BmiCalcInputField({required this.inputHint, required this.errorToDisplay, required this.inputController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: inputHint,
        hintStyle: TextStyle(
            color: Colors.grey
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(20)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(20)
        ),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(20)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.brown,
            ),
            borderRadius: BorderRadius.circular(20)
        ),

      ),
      validator: (String? input){
        if(input != null && input.isNotEmpty){
          return null;
        }
        else{
          return errorToDisplay;
        }
      },
    );
  }

}
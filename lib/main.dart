import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {


  String eqution="0";
  String result="0";
  String expression="";
  double equationFontSize=38.0;
  double resultFontSize=48.0;

  buttonPressed(String buttonText){
    setState(() {
      if(buttonText=="C"){
        eqution="0";
        result="0";
        equationFontSize=38.0;
         resultFontSize=48.0;

      }
      
      else if(buttonText=="⌫"){
         equationFontSize=48.0;
         resultFontSize=38.0;
        eqution=eqution.substring(0,eqution.length-1);
        if(eqution==""){
          eqution="0";
        }

      }
      
      else if(buttonText=="="){
        equationFontSize=38.0;
         resultFontSize=48.0;

         expression=eqution;
         expression=expression.replaceAll('×', '*');
         expression=expression.replaceAll('%', '/');

         try{
           Parser p = new Parser();
            Expression exp=p.parse(expression);
            ContextModel cm=ContextModel();
            result='${exp.evaluate(EvaluationType.REAL, cm)}';

         }catch(e){
           result="error";
         }

      }
      
      else{
         equationFontSize=48.0;
         resultFontSize=38.0;
        if(eqution=="0"){
          eqution=buttonText;
        }else{
        eqution=eqution + buttonText;
        }
      }

    });

  }


  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
                color: Colors.white, width: 1, style: BorderStyle.solid)),
        padding: EdgeInsets.all(20.0),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 38.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Calculator",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              eqution,
              style: TextStyle(
                fontSize: equationFontSize,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              result,
              style: TextStyle(
                fontSize: resultFontSize,
              ),
            ),
          ),
          Expanded(child: Divider()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                      buildButton("C", 1, Colors.redAccent),
                      buildButton("⌫", 1, Colors.purple),
                      buildButton("%", 1, Colors.purple),
                    ],
                    ),
                     TableRow(
                      children: [
                      buildButton("7", 1, Colors.black54),
                      buildButton("8", 1, Colors.black54),
                      buildButton("9", 1, Colors.black54),
                    ],
                    ),
                    TableRow(
                      children: [
                      buildButton("4", 1, Colors.black54),
                      buildButton("5", 1, Colors.black54),
                      buildButton("6", 1, Colors.black54),
                    ],
                    ),
                    TableRow(
                      children: [
                      buildButton("1", 1, Colors.black54),
                      buildButton("2", 1, Colors.black54),
                      buildButton("3", 1, Colors.black54),
                    ],
                    ),
                    TableRow(
                      children: [
                      buildButton(".", 1, Colors.black54),
                      buildButton("0", 1, Colors.black54),
                      buildButton("00", 1, Colors.black54),
                    ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                          buildButton("×", 1, Colors.purple),
                      ]
                    ),
                    TableRow(
                      children: [
                          buildButton("-", 1, Colors.purple),
                      ]
                    ),
                    TableRow(
                      children: [
                          buildButton("+", 1, Colors.purple),
                      ]
                    ),
                    TableRow(
                      children: [
                          buildButton("=", 2, Colors.redAccent),
                      ]
                    ),

                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

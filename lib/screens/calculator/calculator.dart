import 'package:flutter/material.dart';
import 'package:linear_algebra/main.dart';
import 'buttons.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var userInput = '';
  var answer = '';

  // Array of button
  final List<String> buttons = [
    'C',
    'DEL',
    'M',
    '%',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appbar("Calculator"),
        body: Container(
          decoration: background(),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Container(
                  child: Card(
                    shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Colors.red,
                          width: 1,
                        )),
                    margin: EdgeInsets.fromLTRB(26, 20, 26, 15),
                    elevation: 8,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    userInput,
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            alignment: Alignment.centerRight,
                            child: Text(
                              answer,
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ]),
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: Container(
                  child: GridView.builder(
                      itemCount: buttons.length,
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (BuildContext context, int index) {
                        // Clear Button
                        if (index == 0) {
                          return MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput = '';
                                answer = '0';
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.red,
                            textColor: Colors.white,
                          );
                        }
                        // Delete Button
                        else if (index == 1) {
                          return MyButton(
                            buttontapped: () {
                              setState(() {
                                userInput = userInput.substring(
                                    0, userInput.length - 1);
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.red,
                            textColor: Colors.white,
                          );
                        }
                        // M button
                        else if (index == 2) {
                          return MyButton(
                            buttontapped: () {
                              setState(() {
                                if (isOperator(userInput.substring(
                                    userInput.length - 1,
                                    userInput.length)) ==
                                    true) {
                                  userInput = userInput.substring(
                                      0, userInput.length - 1);
                                }
                                userInput += '%';
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.red[50],
                            textColor: Colors.black,
                          );
                        }
                        // % Button
                        else if (index == 3) {
                          return MyButton(
                            buttontapped: () {
                              setState(() {
                                if (isOperator(userInput.substring(
                                        userInput.length - 1,
                                        userInput.length)) ==
                                    true) {
                                  userInput = userInput.substring(
                                      0, userInput.length - 1);
                                }
                                userInput += 'x';
                                userInput += '0.01';
                                equalPressed();
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.red[50],
                            textColor: Colors.black,
                          );
                        }
                        // Equal_to Button
                        else if (index == 18) {
                          return MyButton(
                            buttontapped: () {
                              setState(() {
                                equalPressed();
                              });
                            },
                            buttonText: buttons[index],
                            color: Colors.red[50],
                            textColor: Colors.black,
                          );
                        }

                        //  other buttons
                        else {
                          return MyButton(
                            buttontapped: () {
                              setState(() {
                                if (isOperator(buttons[index]) == true &&
                                    isOperator(userInput.substring(
                                            userInput.length - 1,
                                            userInput.length)) ==
                                        true) {
                                  userInput = userInput.substring(
                                      0, userInput.length - 1);
                                  userInput += buttons[index];
                                } else {
                                  userInput += buttons[index];
                                }
                              });
                            },
                            buttonText: buttons[index],
                            color: isOperator(buttons[index])
                                ? Colors.red[50]
                                : Colors.white,
                            textColor: isOperator(buttons[index])
                                ? Colors.black
                                : Colors.black,
                          );
                        }
                      }), // GridView.builder
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=' || x == '%' || x == '.') {
      return true;
    }
    return false;
  }

// function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}

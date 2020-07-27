import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';


const Color yellow = Color(0xffFE9F0A);
const Color grey = Color(0xff333333);

enum Operator {
  add,
  minus
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Container DigitContainer (String label) {
    return Container(
      height: 99,
      decoration: BoxDecoration(
        color: grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 59,
          ),
        ),
      ),
    );
  }

  String input = '';
  String result = '0';
  Operator operator = Operator.add;

  @override
  Widget build(BuildContext context) {
    FlutterMoneyFormatter fmf = FlutterMoneyFormatter(
        amount: double.parse(result)
    );
    MoneyFormatterOutput fo = fmf.output;

    FlutterMoneyFormatter fmfInput = FlutterMoneyFormatter(
        amount: input == '' ? 0.00 : double.parse(input)
    );

    MoneyFormatterOutput foInput = fmfInput.output;

//    print(fo.nonSymbol);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 49),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                child: AutoSizeText(
                  fo.nonSymbol,
                  style: TextStyle(
                    fontSize: 59.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 11,),
              Container(
                width: double.infinity,
                child: AutoSizeText(
                  foInput.nonSymbol,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 22,),
              Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            operator = Operator.minus;
                          });
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: operator == Operator.minus ? yellow : grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '-',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            operator = Operator.add;
                          });
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: operator == Operator.add ? yellow : grey,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              '+',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35,),
              Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          input = input + '1';
                        });
                      },
                      child: DigitContainer('1'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          input = input + '2';
                        });
                      },child: DigitContainer('2'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          input = input + '3';
                        });
                      },
                      child: DigitContainer('3'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 11,),
              Row(
                children: [
                  Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input = input + '4';
                          });
                        },
                        child: DigitContainer('4'),
                      ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input = input + '5';
                          });
                        },
                        child: DigitContainer('5'),
                      ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input = input + '6';
                          });
                        },
                        child: DigitContainer('6'),
                      ),
                  ),
                ],
              ),
              SizedBox(height: 11,),
              Row(
                children: [
                  Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input = input + '7';
                          });
                        },
                        child: DigitContainer('7'),
                      ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input = input + '8';
                          });
                        },
                        child: DigitContainer('8'),
                      ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            input = input + '9';
                          });
                        },
                        child: DigitContainer('9'),
                      ),
                  ),
                ],
              ),
              SizedBox(height: 11,),
              Row(
                children: [
                  Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          if(input.length != 0) {
                            setState(() {
                              input = input.substring(0, input.length - 1);
                              print(input);
                            });

                          } else {
                            // do nothing
                          }
                        },
                        child: Container(
                          height: 99,
                          decoration: BoxDecoration(
                            color: Color(0xffA5A5A5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'DELETE',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          if(input == '' || input == '0') {

                          } else {
                            setState(() {
                              input = input + '0';
                            });
                          }

                        },
                        child: DigitContainer('0'),
                      ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          if(input.length != 0) {

                            if(result == '' || result == '0') {
                              setState(() {
                                result = input;
                                input = '';
                              });

                            } else {
                              int newResult = operator == Operator.add ? int.parse(result) + int.parse(input) : int.parse(result) - int.parse(input);
                              setState(() {
                                input = '';
                                result = newResult.toString();
                              });
                            }


                          } else {
                            // do nothing
                          }
                        },
                        child: Container(
                          height: 99,
                          decoration: BoxDecoration(
                            color: Color(0xffA5A5A5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'ENTER',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}

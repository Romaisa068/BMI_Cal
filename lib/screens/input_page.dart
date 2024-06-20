// ignore_for_file: avoid_print

import 'package:bmi/components/bottomappbar.dart';
import 'package:bmi/constant.dart';
import 'package:bmi/screens/resultpage.dart';
import 'package:bmi/components/reuseable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/calculatorbrain.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolour = KActiveColor;
  Color femalecardcolor = KActiveColor;
  String displayAge = '';
  String displayWeight = '';

  int feets = 0;
  int inches = 0;
  int weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackgroundColor,
      appBar: AppBar(
        backgroundColor: KbackgroundColor,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(
            color: KTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  cardColor: malecardcolour,
                  cardChild: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 60.0,
                          color: Color(0xFFBD6868),
                        ),
                        KSizedBox,
                        Text(
                          'Male',
                          style: KTextStyle,
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      malecardcolour = KInactiveColor;
                      femalecardcolor = KActiveColor;
                    });
                  },
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  cardColor: femalecardcolor,
                  cardChild: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 60.0,
                          color: Color(0xFFF251B2),
                        ),
                        KSizedBox,
                        Text(
                          'Female',
                          style: KTextStyle,
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      femalecardcolor = KInactiveColor;
                      malecardcolour = KActiveColor;
                    });
                  },
                ),
              ),
            ],
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              cardColor: KActiveColor,
              cardChild: Column(
                children: [
                  const Text(
                    'Height',
                    style: KTextStyle,
                  ),
                  KSizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Reusable3DList(
                        text: 'ft',
                        count: 11,
                        //building the list items for feets
                        builder: (context, index) {
                          int val = index+1;
                          return Center(
                            child: Text('$val', style: KListStyle),
                          );
                        },
                        onSelectedItem: (value) {
                          feets = value+1;
                        },
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Reusable3DList(
                        text: 'in',
                        count: 13,
                        //building the list items for inches
                        builder: (context, index) {
                          return Center(
                            child: Text(index > 9 ? '$index' : '0$index',
                                style: KListStyle),
                          );
                        },
                        onSelectedItem: (value) {
                          // ignore: unused_local_variable
                          inches = value;
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  cardColor: KActiveColor,
                  cardChild: Column(
                    children: [
                      const Text(
                        'Weight (Kg)',
                        style: KTextStyle,
                      ),
                      KSizedBox,
                      ReuseableStack(
                        onChanged: (text) {
                          setState(() {
                            displayWeight = text;
                            weight = int.tryParse(text) ?? 0;
                          });
                        },
                        hintText: '56',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  cardColor: KActiveColor,
                  cardChild: Column(
                    children: [
                      const Text(
                        'Age',
                        style: KTextStyle,
                      ),
                      KSizedBox,
                      ReuseableStack(
                        onChanged: (text) {
                          setState(() {
                            displayAge = text;
                          });
                        },
                        hintText: '18',
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 23.0),
          ),
        ],
      ),
      bottomNavigationBar: const ReuseableBottom(
        height: 60.0,
      ),
      floatingActionButton: Builder(
        builder: (context) {
          return ReusableBottomAppBar(
            buttonText: 'BMI',
            onPressed: () {
              Brain brain = Brain(feets, inches, weight);
              brain.calHeight();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen(
                      height: brain.hieght.toString(),
                      weight: brain.weight.toString(),
                      resultNum: brain.result(),
                      resulttext: brain.resultText(),
                      resultTip: brain.resultTip(),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

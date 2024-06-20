import 'package:bmi/components/bottomappbar.dart';
import 'package:bmi/constant.dart';
import 'package:bmi/components/resultcard.dart';
import 'package:bmi/components/reuseable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResultScreen extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ResultScreen(
      {required this.height,
      required this.weight,
      required this.resultTip,
      required this.resultNum,
      required this.resulttext});

  final String height;
  final String weight;
  final String resultTip;
  final String resultNum;
  final String resulttext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KbackgroundColor,
      appBar: AppBar(
        backgroundColor: KbackgroundColor,
        title: const Text(
          'Result',
          style: KTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReuseableRowCard(
              cardText: 'Weight',
              textWeight: weight,
              textUnit: 'Kg',
            ),
            const SizedBox(
              height: 50.0,
            ),
            ReuseableRowCard(
              cardText: 'Height',
              textWeight: height,
              textUnit: 'Inches',
            ),
          ],
        ),
      ),
      bottomNavigationBar: ReuseableBottom(
        height: 350.0,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResultCard(
              resultNum: resultNum,
              resulttext: resulttext,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              resultTip,
              style: const TextStyle(
                  color: KActiveColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
      floatingActionButton: Builder(builder: (context) {
        return ReusableBottomAppBar(
          icon: FontAwesomeIcons.rotateRight,
          onPressed: () {
            Navigator.pop(context);
          },
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

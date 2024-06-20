import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard(
      {super.key, required this.resultNum,
      required this.resulttext,
      });

  final String resultNum;
  final String resulttext;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 180.0,
        width: 300.0,
        decoration: KboxDecoration.copyWith(
          color: KActiveColor,
          boxShadow: List.filled(
            3,
            const BoxShadow(color: Color(0x580179AE)),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  resultNum,
                  style: KnumberStyle.copyWith(fontSize: 70.0),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Text(
                      'BMI',
                      style: KTextStyle.copyWith(
                          color: const Color(0xFF0C8FBF), fontSize: 35.0),
                    ),
                    Text(
                      resulttext,
                      style: KTextStyle.copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            const BMIIndicator(),
          ],
        ),
      ),
    );
  }
}

class BMIIndicator extends StatelessWidget {
  const BMIIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Underweight',
                style: KIndicatorTextStyle.copyWith(
                  color: const Color(0xFF018ABD),
                ),
              ),
              Text(
                'Normal',
                style: KIndicatorTextStyle.copyWith(
                  color: const Color(0xFF64F64D),
                ),
              ),
              Text(
                'Overweight',
                style: KIndicatorTextStyle.copyWith(
                    color: const Color(0xFFF64D4D)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 8.0,
                width: 95.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF018ABD),
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(5.0)),
                ),
              ),
              Container(
                height: 8.0,
                width: 95.0,
                color: const Color(0xFF64F64D),
              ),
              Container(
                height: 8.0,
                width: 95.0,
                decoration: const BoxDecoration(
                  color: Color(0xFFF64D4D),
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(5.0)),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '16.0',
                style: KIndicatorTextStyle,
              ),
              Text(
                '18.5',
                style: KIndicatorTextStyle,
              ),
              Text(
                '25.0',
                style: KIndicatorTextStyle,
              ),
              Text(
                '40.0',
                style: KIndicatorTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

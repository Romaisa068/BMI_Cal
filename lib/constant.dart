import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const KTextColor = Color(0xFF004581);

// ignore: constant_identifier_names
const KActiveColor = Color(0xFFDDE8F0);
// ignore: constant_identifier_names
const KInactiveColor = Color(0xFFCBE8F0);

// ignore: constant_identifier_names
const KTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: KTextColor,
);

// ignore: constant_identifier_names
const KnumberStyle = TextStyle(
  fontSize: 40.0,
  fontWeight: FontWeight.bold,
  color: KTextColor,
);

// ignore: non_constant_identifier_names
BoxDecoration KboxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(15.0),
  boxShadow: List.filled(
      3,
      const BoxShadow(
        color: Color(0x5978B3CD),
        spreadRadius: 5.0,
        blurRadius: 10,
        offset: Offset(4, 4),
      ),
      growable: true),
);
// ignore: constant_identifier_names
const KbackgroundColor = Color(0xFFB1E6F0);

// ignore: constant_identifier_names
const KSizedBox = SizedBox(
  height: 15.0,
);

// ignore: constant_identifier_names
const Khintstyle = TextStyle(
  color: Color(0x69004581),
);
// ignore: constant_identifier_names
const Kdivder = Divider(
  color: KTextColor,
  height: 3.0,
  thickness: 3.0,
  indent: 20.0,
  endIndent: 20.0,
);

// ignore: constant_identifier_names
const KlistDiveder = Divider(
  color: Color(0xFF729CBF),
  height: 3.0,
  thickness: 2.0,
);

// ignore: constant_identifier_names
const KListStyle =
    TextStyle(color: KTextColor, fontSize: 26.0, fontWeight: FontWeight.w700);
// ignore: non_constant_identifier_names, constant_identifier_names
const KResultTextStyle =
    TextStyle(color: Colors.black,  fontWeight: FontWeight.bold);

// ignore: constant_identifier_names
const KIndicatorTextStyle = TextStyle(
  color:KTextColor,
  fontSize: 12.0,
  fontWeight: FontWeight.bold,
);
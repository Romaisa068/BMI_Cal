import 'package:flutter/material.dart';

class ReuseableBottom extends StatelessWidget {
// ignore: use_key_in_widget_constructors
  const ReuseableBottom({required this.height, this.cardChild});

  final double height;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: BorderSide.strokeAlignCenter,
        color: const Color(0xFF018ABD),
        child: cardChild,
      ),
    );
  }
}

class ReusableBottomAppBar extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReusableBottomAppBar(
      {this.buttonText, required this.onPressed, this.icon});

  final String? buttonText;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        height: 75.0,
        width: 75.0,
        //padding: const EdgeInsets.symmetric(horizontal: 5.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: const Color(0xFFDDE8F0),
            width: 8.0,
          ),
        ),
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: const Color(0xFF004581),
          onPressed: onPressed,
          child: Center(
            child: Stack(
              
              alignment: Alignment.center,
              children: [
                // ignore: unrelated_type_equality_checks
                if (icon != null) Icon(icon, color:const Color(0xFFBDD1E0) ,),
                // ignore: unrelated_type_equality_checks
                if (buttonText != null)
                  Text(
                    buttonText!,
                    style: const TextStyle(
                      color: Color(0xFFBDD1E0),
                      fontWeight: FontWeight.w900,
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                
              ],
            ),
          ),
        ),
      );
    });
  }
}

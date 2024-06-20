import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReuseableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReuseableCard(
      {required this.cardChild, this.onTap, required this.cardColor});

  final Widget cardChild;
  final Color cardColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 130.0,
          width: 100.0,
          margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
          decoration: KboxDecoration.copyWith(color: cardColor),
          child: cardChild),
    );
  }
}

class ReuseableStack extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const ReuseableStack({required this.onChanged, this.value,required this.hintText});

  final Function(String) onChanged;
  final String hintText;
  final int? value;

  @override
  State<ReuseableStack> createState() => _ReuseableStackState();
  
}

class _ReuseableStackState extends State<ReuseableStack> {

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 27.0,
          right: 27.0,
          bottom: 0,
          child: Container(
            height: 3.0,
            color: KTextColor,
          ),
        ),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: Khintstyle,
              contentPadding: const EdgeInsets.symmetric(vertical: 3.0),
              border: InputBorder.none),
          style: KnumberStyle,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          onChanged: widget.onChanged,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class Reusable3DList extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Reusable3DList({required this.text, required this.count,required this.builder ,required this.onSelectedItem});

  final String text;
  final int count;
  final Function(int) onSelectedItem;

final Widget Function(BuildContext, int) builder;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 100.0,
              width: 130.0,
              child: ListWheelScrollView.useDelegate(
                itemExtent: 40,
                diameterRatio: 1.2,
                perspective: 0.003,
                physics: const FixedExtentScrollPhysics(),
                onSelectedItemChanged: onSelectedItem,
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: count,
                  builder: builder
                ),
              ),
            ),
            const Positioned(
              top: 70.0,
              left: 0,
              right: 0,
              child: KlistDiveder,
            ),
            const Positioned(
              bottom: 70.0,
              left: 0,
              right: 0,
              child: KlistDiveder,
            ),
          ],
        ),
        Text(
          text,
          style: KTextStyle,
        ),
      ],
    );
  }
}


class ReuseableRowCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReuseableRowCard({required this.cardText,required this.textWeight,required this.textUnit});

  final String cardText;
  final String textWeight;
  final String textUnit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 43.0,
          width: 145.0,
          decoration: KboxDecoration.copyWith(color: KActiveColor),
          child:  Center(
            child: Text(
              cardText,
              style: KTextStyle,
            ),
          ),
          //decoration: ,
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              textWeight,
              style:KResultTextStyle.copyWith(fontSize: 22.0)
            ),
            Text(
              textUnit,
              
              style: KResultTextStyle.copyWith(fontSize: 15.0),
            ),
          ],
        )
      ],
    );
  }
}

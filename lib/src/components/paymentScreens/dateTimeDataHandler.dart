import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';
import 'package:orange_juice/src/components/paymentScreens/DateTimeCell.dart';

class DateTimeHandler extends StatefulWidget {
  @override
  _DateTimeHandlerState createState() => _DateTimeHandlerState();
}

class _DateTimeHandlerState extends State<DateTimeHandler> {
  int selectedIndex = 0;

  void select({int value}) {
    setState(() {
      selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomBlock(
      child: SizedBox(
        height: 90,
        child: ListView.builder(
          itemCount: 8,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => select(value: index),
              child: DateTimeCell(
                currentIndex: index,
                selectedIndex: selectedIndex,
              ),
            );
          },
        ),
      ),
    );
  }
}

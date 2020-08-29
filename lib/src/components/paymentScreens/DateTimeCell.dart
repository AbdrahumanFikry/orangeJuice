import 'package:flutter/material.dart';

class DateTimeCell extends StatelessWidget {
  final int selectedIndex;
  final int currentIndex;

  DateTimeCell({
    this.currentIndex,
    this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 7.5,
        vertical: 5.0,
      ),
      decoration: BoxDecoration(
        color: currentIndex == selectedIndex ? Colors.grey[300] : Colors.white,
        border: Border.all(
          color:
              currentIndex == selectedIndex ? Colors.grey[400] : Colors.white,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'يوليو',
            style: TextStyle(
              fontSize: screen.size.height > 600 ? 16.0 : 14.0,
              color: currentIndex == selectedIndex
                  ? Colors.black
                  : Colors.grey[400],
            ),
          ),
          Text(
            '4',
            style: TextStyle(
              fontSize: screen.size.height > 600 ? 18.0 : 16.0,
              color: currentIndex == selectedIndex
                  ? Colors.black
                  : Colors.grey[400],
            ),
          ),
          Text(
            'السبت',
            style: TextStyle(
              fontSize: screen.size.height > 600 ? 16.0 : 14.0,
              color: currentIndex == selectedIndex
                  ? Colors.black
                  : Colors.grey[400],
            ),
          ),
        ],
      ),
    );
  }
}

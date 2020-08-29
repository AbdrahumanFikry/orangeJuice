import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuantitySelector extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int count = 1;

  void add() {
    setState(() {
      count++;
    });
  }

  void remove() {
    if (count > 1) {
      setState(() {
        count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 25.0,
        right: 15.0,
        bottom: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InkWell(
            splashColor: Colors.orange,
            onTap: add,
            child: Container(
              height: screen.size.width > 360 ? 30.0 : 20.0,
              width: screen.size.width > 360 ? 30.0 : 20.0,
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.5),
                borderRadius: BorderRadius.circular(3.0),
                border: Border.all(
                  color: Colors.orange,
                  width: 1.0,
                ),
              ),
              child: Center(
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: Colors.orange,
                  size: screen.size.width > 360 ? 16.0 : 12.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            child: Text(
              count.toString(),
              style: TextStyle(
                color: Colors.black,
                fontSize: screen.size.height > 600.0 ? 18.0 : 16.0,
              ),
            ),
          ),
          InkWell(
            splashColor: Colors.orange,
            onTap: remove,
            child: Container(
              height: screen.size.width > 360 ? 30.0 : 20.0,
              width: screen.size.width > 360 ? 30.0 : 20.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Center(
                child: Icon(
                  FontAwesomeIcons.minus,
                  color: Colors.grey,
                  size: screen.size.width > 360 ? 16.0 : 12.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

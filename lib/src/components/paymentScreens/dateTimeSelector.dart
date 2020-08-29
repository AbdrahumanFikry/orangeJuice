import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/paymentScreens/dateTimeDataHandler.dart';

class DateTimeSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'تاريخ التوصيل',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: Container(
                  height: 2.5,
                  width: double.infinity,
                  color: Colors.grey[300],
                  margin: const EdgeInsets.only(
                    right: 10.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        DateTimeHandler(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'الوقت',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        DateTimeHandler(),
      ],
    );
  }
}

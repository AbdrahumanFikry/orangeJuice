import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';
import 'package:orange_juice/src/components/commonComponents/inputBorderForm.dart';

class UserDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.person,
                color: Colors.green,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                'بيانات المستلم',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: screen.size.height > 600 ? 22 : 18),
              ),
            ],
          ),
        ),
        CustomBlock(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Flexible(
                    child: InputBorderForm(
                      hintText: 'محمد عصام أحمد',
                      readOnly: true,
                    ),
                  ),
                  Flexible(
                    child: InputBorderForm(
                      hintText: 'ذكر',
                      readOnly: true,
                    ),
                  ),
                ],
              ),
              InputBorderForm(
                hintText: '01002228293',
                readOnly: true,
              ),
              InputBorderForm(
                hintText: 'ماك بوك برو 2030',
                readOnly: true,
              ),
            ],
          ),
        )
      ],
    );
  }
}

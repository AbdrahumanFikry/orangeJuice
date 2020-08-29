import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/dropDownMenu.dart';
import 'package:orange_juice/src/components/commonComponents/inputBorderForm.dart';

class ReceiverData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'بيانات الشخص',
              style: TextStyle(
                fontSize: screen.size.height > 600 ? 20.0 : 18.0,
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
        Padding(
          padding: const EdgeInsets.only(
            left: 7.0,
          ),
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 2,
                child: InputBorderForm(
                  hintText: 'الاسم',
                ),
              ),
              Flexible(
                flex: 1,
                child: CustomDropDownMenu(),
              ),
            ],
          ),
        ),
        InputBorderForm(
          hintText: 'رقم الهاتف',
        ),
        InputBorderForm(
          hintText: 'ملاحظات',
        ),
      ],
    );
  }
}

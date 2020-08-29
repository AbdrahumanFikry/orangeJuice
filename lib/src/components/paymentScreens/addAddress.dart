import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/dropDownMenu.dart';
import 'package:orange_juice/src/components/commonComponents/inputBorderForm.dart';

class AddAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'اضف عنوان',
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
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: Row(
            children: <Widget>[
              Flexible(
                flex: 2,
                child: CustomDropDownMenu(),
              ),
              SizedBox(
                width: 10.0,
              ),
              Flexible(
                flex: 1,
                child: CustomDropDownMenu(),
              ),
            ],
          ),
        ),
        Row(
          children: <Widget>[
            Flexible(
              child: InputBorderForm(
                hintText: 'الحي',
                readOnly: false,
              ),
              flex: 1,
            ),
            Flexible(
              child: InputBorderForm(
                hintText: 'الشارع',
                readOnly: false,
              ),
              flex: 2,
            ),
          ],
        ),
        InputBorderForm(
          hintText: 'وصف المنزل',
          readOnly: false,
        ),
        InputBorderForm(
          hintText: 'رقم الهاتف',
          readOnly: false,
        ),
      ],
    );
  }
}

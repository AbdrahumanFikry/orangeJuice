import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/components/commonComponents/inputBorderForm.dart';

class CashPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InputBorderForm(
      hintText: 'تم اختيار الدفع عند الاستلام',
      readOnly: true,
    );
  }
}

class VisaPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InputBorderForm(
          hintText: 'صاحب الحساب',
        ),
        InputBorderForm(
          hintText: 'ادخل رقم البطاقه',
          readOnly: true,
        ),
        Row(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: InputBorderForm(
                hintText: 'الشهر',
              ),
            ),
            Flexible(
              flex: 2,
              child: InputBorderForm(
                hintText: 'السنه',
              ),
            ),
            Flexible(
              flex: 3,
              child: InputBorderForm(
                hintText: 'الرقم السرى',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MadaPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Flexible(
              flex: 3,
              child: InputBorderForm(
                hintText: 'رقم الحساب 123456',
                readOnly: true,
              ),
            ),
            Flexible(
              flex: 2,
              child: InputBorderForm(
                hintText: 'بنك الرياض',
                readOnly: true,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                //TODO open Camera or Gallery -------
              },
              child: Container(
                width: 45.0,
                height: 48.0,
                padding: const EdgeInsets.symmetric(
                  vertical: 7.0,
                ),
                margin: const EdgeInsets.only(
                  right: 5.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(2.5),
                ),
                child: Center(
                  child: Icon(
                    FontAwesomeIcons.image,
                    color: Colors.grey,
                    size: 22.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: InputBorderForm(
                hintText: 'قم بارفاق صوره الايداع البنكى',
              ),
            ),
          ],
        ),
      ],
    );
  }
}

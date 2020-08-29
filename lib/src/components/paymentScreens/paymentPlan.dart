import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/paymentScreens/paymentMethods.dart';

class PaymentPlan extends StatefulWidget {
  @override
  _PaymentPlanState createState() => _PaymentPlanState();
}

class _PaymentPlanState extends State<PaymentPlan> {
  int chosenMethod = 0;

  void changeMethod(int value) {
    setState(() {
      chosenMethod = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    double containerSize = 17.0;
    double fontSize = 15.0;
    if (screen.size.width < 365) {
      containerSize = 13.5;
      fontSize = 12.0;
    }
    Widget body = CashPlan();
    if (chosenMethod == 1 || chosenMethod == 2) {
      body = VisaPlan();
    } else if (chosenMethod == 3) {
      body = MadaPlan();
    } else {
      body = CashPlan();
    }
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screen.size.width > 365 ? 5.0 : 0.0,
        vertical: 15.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _customRadioButton(
                title: 'كاش',
                fontSize: fontSize,
                containerSize: containerSize,
                onTab: () => changeMethod(0),
                index: 0,
              ),
              SizedBox(
                width: screen.size.width > 360.0 ? 10.0 : 5.0,
              ),
              _customRadioButton(
                title: 'فيزا + ماستركارد',
                fontSize: fontSize,
                containerSize: containerSize,
                onTab: () => changeMethod(1),
                index: 1,
              ),
              SizedBox(
                width: screen.size.width > 360.0 ? 10.0 : 5.0,
              ),
              _customRadioButton(
                title: 'مدى',
                fontSize: fontSize,
                containerSize: containerSize,
                onTab: () => changeMethod(2),
                index: 2,
              ),
              SizedBox(
                width: screen.size.width > 360.0 ? 10.0 : 5.0,
              ),
              _customRadioButton(
                title: 'نحويل بنكى',
                fontSize: fontSize,
                containerSize: containerSize,
                onTab: () => changeMethod(3),
                index: 3,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: body,
          ),
        ],
      ),
    );
  }

  Widget _customRadioButton({
    double containerSize,
    double fontSize,
    String title,
    Function onTab,
    int index,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(
          splashColor: Colors.orange,
          onTap: onTab,
          child: Container(
            height: containerSize,
            width: containerSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: chosenMethod == index ? Colors.orange : Colors.white,
              border: Border.all(
                width: 0.5,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

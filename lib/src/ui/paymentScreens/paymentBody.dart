import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/components/commonComponents/dialogs.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/components/paymentScreens/cartdata.dart';
import 'package:orange_juice/src/components/paymentScreens/paymentPlan.dart';

class PaymentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 10.0,
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(
                FontAwesomeIcons.vaadin,
                color: Colors.black,
                size: 18.0,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                'وسيله الدفع',
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
          PaymentPlan(),
          CartData(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: false,
                onChanged: null,
                //TODO Agreement -------------
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                'الموافقه على سياسه الخصوصيه',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          OrangeJuiceButton(
            title: 'اكمال الطلب',
            buttonColor: Colors.orange,
            onTap: () {
              GlobalAlertDialog.show(
                context: context,
                dialogType: DialogType.ConfirmPayment,
              );
            },
          ),
        ],
      ),
    );
  }
}

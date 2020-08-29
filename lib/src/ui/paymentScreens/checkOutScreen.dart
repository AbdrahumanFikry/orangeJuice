import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/mainDrawer.dart';
import 'package:orange_juice/src/components/mainScreens/mainAppBar.dart';
import 'package:orange_juice/src/components/paymentScreens/checkOutProgress.dart';
import 'package:orange_juice/src/ui/paymentScreens/deliveryBody.dart';
import 'package:orange_juice/src/ui/paymentScreens/paymentBody.dart';

class CheckOutScreen extends StatefulWidget {
  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool payment = false;

  void continueOrder() {
    setState(() {
      payment = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Column(
            children: <Widget>[
              MainAppBar(
                secondary: true,
              ),
              CheckOutProgress(
                isPayment: payment,
              ),
              payment
                  ? PaymentBody()
                  : DeliveryBody(
                      continueOrder: continueOrder,
                    ),
            ],
          ),
          drawer: MainDrawer(),
        ),
      ),
    );
  }
}

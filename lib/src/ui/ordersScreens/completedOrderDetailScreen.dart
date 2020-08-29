import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/components/ordersScreens/deliveryDetail.dart';
import 'package:orange_juice/src/components/ordersScreens/orderDetail.dart';
import 'package:orange_juice/src/components/ordersScreens/paymentDetail.dart';
import 'package:orange_juice/src/components/ordersScreens/userDetails.dart';

class CompletedOrderDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'الطلب منتهي',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 20.0,
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          children: <Widget>[
            OrderDetail(
              finished: true,
            ),
            DeliveryDetail(),
            UserDetails(),
            PaymentDetails(),
            OrangeJuiceButton(
              title: 'رجوع',
              buttonColor: Colors.orange,
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/components/mainScreens/cartAppBar.dart';
import 'package:orange_juice/src/components/mainScreens/cartProducts.dart';
import 'package:orange_juice/src/components/mainScreens/mainOrderDetails.dart';
import 'package:orange_juice/src/components/mainScreens/quantityViewer.dart';
import 'package:orange_juice/src/ui/paymentScreens/checkOutScreen.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CartAppBar(),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15.0,
                      ),
                      children: <Widget>[
                        MainOrderDetails(),
                        QuantityViewer(),
                        CartProducts(),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: OrangeJuiceButton(
                  title: 'اكمال الطلب',
                  buttonColor: Colors.orange,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => CheckOutScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

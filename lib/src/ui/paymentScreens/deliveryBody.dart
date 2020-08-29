import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';
import 'package:orange_juice/src/components/commonComponents/inputWidget.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/components/paymentScreens/addAddress.dart';
import 'package:orange_juice/src/components/paymentScreens/addresses.dart';
import 'package:orange_juice/src/components/paymentScreens/dateTimeSelector.dart';

class DeliveryBody extends StatelessWidget {
  final Function continueOrder;

  DeliveryBody({
    this.continueOrder,
  });

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
                'التوصيل',
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
          const SizedBox(
            height: 15.0,
          ),
          AddAddress(),
          Addresses(),
          DateTimeSelector(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'اضف ملاحضه',
                  style: TextStyle(
                    fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          CustomBlock(
            child: InputWidget(
              hintText: '',
              editing: true,
            ),
          ),
          OrangeJuiceButton(
            title: 'اكمال الطلب',
            buttonColor: Colors.orange,
            onTap: continueOrder,
          ),
        ],
      ),
    );
  }
}

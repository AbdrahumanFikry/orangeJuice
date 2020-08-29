import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/inputBorderForm.dart';

class CartData extends StatelessWidget {
  final bool isConfirm;

  CartData({
    this.isConfirm = false,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/iconsData/Dollar_bag.png'),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                'ملخص السله',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Text(
                '450 رس',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Divider(
            height: 20.0,
            indent: 0.0,
            thickness: 1.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/iconsData/coin.png'),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                'تكلفه التوصيل',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Text(
                '50 رس',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Divider(
            height: 20.0,
            indent: 0.0,
            thickness: 1.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/iconsData/coin.png'),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                'ضريبه القيمه المضافه',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Text(
                '15 رس',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Divider(
            height: 20.0,
            indent: 0.0,
            thickness: 1.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('assets/iconsData/coin.png'),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                'إجمالي الطلب',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                ),
              ),
              Spacer(),
              Text(
                '500 رس',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Divider(
            height: 20.0,
            indent: 0.0,
            thickness: 1.0,
          ),
          isConfirm
              ? SizedBox()
              : Stack(
                  children: <Widget>[
                    InputBorderForm(
                      hintText: 'هل لديك كوبون تخفيض',
                      readOnly: false,
                    ),
                    Positioned(
                      left: 15.0,
                      top: 15,
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                        ),
                        child: Center(
                          child: FittedBox(
                            child: const Text(
                              'تطبيبق',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )
        ],
      ),
    );
  }
}

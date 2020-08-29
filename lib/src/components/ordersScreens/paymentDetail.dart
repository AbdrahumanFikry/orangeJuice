import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';
import 'package:orange_juice/src/components/commonComponents/inputBorderForm.dart';

class PaymentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 5.0,
            ),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.credit_card,
                  color: Colors.green,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  'بيانات الدفع',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: screen.size.height > 600 ? 22 : 18),
                ),
              ],
            ),
          ),
          CustomBlock(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Flexible(
                      flex: 3,
                      child: InputBorderForm(
                        hintText: 'فيزا كارد',
                        readOnly: true,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: InputBorderForm(
                        hintText: '480 رس',
                        readOnly: true,
                      ),
                    ),
                    const SizedBox(
                      width: 40.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                   Image.asset('assets/iconsData/Dollar_bag.png'),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'ملخصه السله ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '450 رس',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 18.0 : 16.0,
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
                    Image.asset('assets/iconsData/PinnedMap.png'),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                    'تكلفه التوصيل',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '50 رس',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 18.0 : 16.0,
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
                        color: Colors.grey,
                        fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '500 رس',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 20.0,
                  indent: 0.0,
                  thickness: 1.0,
                ),
                Stack(
                  children: <Widget>[
                    InputBorderForm(
                      hintText: '22938474499',
                      readOnly: true,
                    ),
                    Positioned(
                      left: 20.0,
                      top: 13,
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: FittedBox(
                            child: const Text(
                              'كوبون الخصم',
                              style: TextStyle(
                                fontSize: 16.0,
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
          )
        ],
      ),
    );
  }
}

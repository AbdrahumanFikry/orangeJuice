import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';
import 'package:orange_juice/src/components/commonComponents/dialogs.dart';
import 'package:orange_juice/src/components/commonComponents/mainDrawer.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/components/mainScreens/mainAppBar.dart';
import 'package:orange_juice/src/components/paymentScreens/addresses.dart';
import 'package:orange_juice/src/components/paymentScreens/cartdata.dart';
import 'package:orange_juice/src/ui/mainScreens/mainScreen.dart';

class ConfirmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Column(
            children: <Widget>[
              MainAppBar(
                secondary: true,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  children: <Widget>[
                    Addresses(
                      isConfirm: true,
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'موعد التوصيل',
                                style: TextStyle(
                                  fontSize:
                                      screen.size.height > 600 ? 16.0 : 14.0,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomBlock(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                '5/7/2020',
                                style: TextStyle(
                                  fontSize:
                                      screen.size.height > 600 ? 16.0 : 14.0,
                                  color: Colors.grey[400],
                                ),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                '10 صباحا',
                                style: TextStyle(
                                  fontSize:
                                      screen.size.height > 600 ? 16.0 : 14.0,
                                  color: Colors.grey[400],
                                ),
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                '12 ضهرا',
                                style: TextStyle(
                                  fontSize:
                                      screen.size.height > 600 ? 16.0 : 14.0,
                                  color: Colors.grey[400],
                                ),
                                maxLines: 2,
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                'تفاصيل الطلب',
                                style: TextStyle(
                                  fontSize:
                                      screen.size.height > 600 ? 16.0 : 14.0,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomBlock(
                          child: CartData(
                            isConfirm: true,
                          ),
                        ),
                      ],
                    ),
                    OrangeJuiceButton(
                      buttonColor: Colors.green,
                      title: 'تأكيد',
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (_) => MainScreen(),
                            ),
                            (route) => false);
                        GlobalAlertDialog.show(
                          context: context,
                          dialogType: DialogType.DonePayment,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          drawer: MainDrawer(),
        ),
      ),
    );
  }
}

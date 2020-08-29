import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';
import 'package:orange_juice/src/components/commonComponents/inputWidget.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/components/commonComponents/profileHeader.dart';

class UserDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ProfileHeader(),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15.0,
                      ),
                      child: Text(
                        'البيانات الشخصيه',
                        style: TextStyle(
                          fontSize: screen.size.height > 600 ? 18 : 16,
                        ),
                      ),
                    ),
                    CustomBlock(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'الاسم',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: screen.size.height > 600 ? 20 : 18,
                                ),
                              ),
                              Expanded(
                                child: InputWidget(
                                  hintText: 'محمد عبدالماجد محمد محمد',
                                  editing: true,
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 20.0,
                            indent: 0.0,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'رقم الهاتف',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: screen.size.height > 600 ? 20 : 18,
                                ),
                              ),
                              Expanded(
                                child: InputWidget(
                                  hintText: '+966 559 960 646',
                                  editing: true,
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.grey,
                            height: 20.0,
                            indent: 0.0,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'كلمه المرور',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: screen.size.height > 600 ? 20 : 18,
                                ),
                              ),
                              Expanded(
                                child: InputWidget(
                                  hintText: '',
                                  editing: true,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
//                    EditDeliveryData(),
                    OrangeJuiceButton(
                      buttonColor: Colors.orange,
                      title: 'حفظ',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

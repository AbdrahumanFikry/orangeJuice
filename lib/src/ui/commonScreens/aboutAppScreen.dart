import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';

class AboutAppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          body: ListView(
            padding: EdgeInsets.symmetric(
              vertical: 2.5,
              horizontal: 10.0,
            ),
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.22,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/iconsData/orange.png'),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'عن التطبيق',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 20 : 18,
                      ),
                    )
                  ],
                ),
              ),
              CustomBlock(
                child: Text(
                  ' هنا يكتب نبذه ومعلومات عن التطبيق هنا يكتب نبذه ومعلومات عن '
                  '  التطبيق هنا يكتب نبذه ومعلومات عن التطبيق هنا يكتب نبذه ومعلومات عن التطبيق هنا يكتب نبذه ومعلومات عن التطبيق هنا يكتب نبذه ومعلومات عن التطبيق',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                  ),
                  softWrap: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Row(
                  children: <Widget>[
                    Image.asset('assets/iconsData/phone.png'),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'معلومات التوصيل',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 20.0 : 18.0,
                      ),
                    )
                  ],
                ),
              ),
              CustomBlock(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset('assets/iconsData/phone.png'),
                        const SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          width: screen.size.width * 0.3,
                          child: Text(
                            '+966 556 444 999',
                            style: TextStyle(
                              fontSize: screen.size.height > 600 ? 15 : 13,
                              color: Colors.grey,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Spacer(),
                        Image.asset('assets/iconsData/phone.png'),
                        const SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          width: screen.size.width * 0.3,
                          child: Text(
                            '+966 556 444 999',
                            style: TextStyle(
                              fontSize: screen.size.height > 600 ? 15 : 13,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      height: 20.0,
                      color: Colors.grey,
                      indent: 0.0,
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset('assets/iconsData/location.png'),
                        const SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          width: screen.size.width * 0.6,
                          child: Text(
                            'جده والحى الخامس',
                            style: TextStyle(
                              fontSize: screen.size.height > 600 ? 16 : 14,
                              color: Colors.grey,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 20.0,
                      color: Colors.grey,
                      indent: 0.0,
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset('assets/iconsData/mail.png'),
                        const SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          width: screen.size.width * 0.3,
                          child: Text(
                            'Dev@gmail.com',
                            style: TextStyle(
                              fontSize: screen.size.width > 600 ? 16 : 14,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        Spacer(),
                        Image.asset('assets/iconsData/language.png'),
                        const SizedBox(
                          width: 5.0,
                        ),
                        SizedBox(
                          width: screen.size.width * 0.3,
                          child: Text(
                            'www.google.com',
                            style: TextStyle(
                              fontSize: screen.size.height > 600 ? 14 : 12,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: OrangeJuiceButton(
                  title: 'حفظ',
                  buttonColor: Colors.orange,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

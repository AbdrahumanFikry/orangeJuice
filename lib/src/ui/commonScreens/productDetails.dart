import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/components/commonComponents/mainDrawer.dart';
import 'package:orange_juice/src/components/mainScreens/mainAppBar.dart';
import 'package:orange_juice/src/components/mainScreens/quantitySelector.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              MainAppBar(
                secondary: true,
              ),
              Expanded(
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overScroll) {
                    overScroll.disallowGlow();
                    return true;
                  },
                  child: ListView(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: screen.size.height > 600 ? 350 : 250,
                            width: screen.size.width,
                          ),
                          Positioned(
                            top: 0.0,
                            right: 0.0,
                            left: 0.0,
                            child: Container(
                              height: screen.size.height > 600 ? 300 : 200,
                              width: screen.size.width,
                              color: Colors.grey[200],
                              child: Image.asset(
                                'assets/images/testLogo.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0.0,
                            right: 10.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    //TODO Add to cart ------
                                  },
                                  child: Container(
                                    height: 100.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                      color: Colors.orange.withOpacity(0.28),
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: Colors.orange,
                                        width: 1.3,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '10 رس',
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.orange,
                                          ),
                                        ),
                                        Icon(
                                          FontAwesomeIcons.shoppingCart,
                                          color: Colors.orange,
                                          size: screen.size.width > 360
                                              ? 24.0
                                              : 20.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                SizedBox(
                                  width: screen.size.width - 120,
                                  child: Text(
                                    'تفاح سورى',
                                    style: TextStyle(
                                      fontSize: screen.size.height > 600
                                          ? 24.0
                                          : 20.0,
                                      color: Colors.black,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        child: Text(
                          'تفاح سورى تفاح سورى تفاح سورى تفاح سورى تفاح سورى تفاح سورى تفاح سورى تفاح سورى تفاح سورى تفاح سورى تفاح سورى تفاح سورى تفاح سورى تفاح سورى ',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey,
                          ),
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          QuantitySelector(),
                        ],
                      ),
                    ],
                  ),
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

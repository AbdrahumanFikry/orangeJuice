import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/components/commonComponents/pageRouts.dart';
import 'package:orange_juice/src/components/mainScreens/quantitySelector.dart';
import 'package:orange_juice/src/ui/commonScreens/productDetails.dart';

class ItemHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              FadeRoute(
                page: ProductDetails(),
              ),
            );
          },
          child: Container(
            width: screen.size.width > 400 ? 400.0 : double.infinity,
            margin: const EdgeInsets.only(
              top: 15.0,
              left: 25.0,
              right: 10.0,
              bottom: 5.0,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 20.0,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                  offset: Offset(
                    0,
                    0.5,
                  ),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: screen.size.width > 360 ? 60.0 : 50.0,
                  width: screen.size.width > 360 ? 60.0 : 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Image.asset(
                    'assets/images/testLogo.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      child: Text(
                        'برتقال فلسطينى',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      width: screen.size.width > 360
                          ? null
                          : screen.size.width * 0.5,
                    ),
                    SizedBox(
                      width: screen.size.width > 360
                          ? 200
                          : screen.size.width * 0.5,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.coins,
                            color: Colors.grey,
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'سعر الكيلو',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  screen.size.height > 600.0 ? 16.0 : 14.0,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '10 رس',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize:
                                  screen.size.height > 600.0 ? 16.0 : 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    QuantitySelector(),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0.0,
          left: 10.0,
          child: InkWell(
            onTap: () {
              //TODO Navigate to cart Screen ------
            },
            splashColor: Colors.orange,
            child: Container(
              height: screen.size.width > 360 ? 50.0 : 40.0,
              width: screen.size.width > 360 ? 50.0 : 40.0,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 0.5,
                    offset: Offset(
                      0,
                      0.5,
                    ),
                  ),
                ],
              ),
              child: Center(
                child: Icon(
                  FontAwesomeIcons.shoppingCart,
                  color: Colors.white,
                  size: screen.size.width > 360 ? 22.0 : 18.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

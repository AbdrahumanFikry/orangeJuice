import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/components/mainScreens/quantitySelector.dart';

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Stack(
      children: <Widget>[
        Container(
          width: screen.size.width > 400 ? 400.0 : double.infinity,
          margin: const EdgeInsets.only(
            top: 15.0,
            left: 15.0,
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
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/testLogo.png',
                    ),
                    fit: BoxFit.cover,
                  ),
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
                  Text(
                    'سعر الكيلو 10 رس',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: screen.size.height > 600.0 ? 16.0 : 14.0,
                    ),
                  ),
                  QuantitySelector(),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: screen.size.width > 360 ? 50.0 : 40.0,
          left: 0.0,
          child: InkWell(
            onTap: () {
              //TODO Remove from cart ------
            },
            splashColor: Colors.orange,
            child: Container(
              height: screen.size.width > 360 ? 50.0 : 40.0,
              width: screen.size.width > 360 ? 50.0 : 40.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
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
              child: Center(
                child: Icon(
                  FontAwesomeIcons.timesCircle,
                  color: Colors.orange,
                  size: screen.size.width > 360 ? 26.0 : 22.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

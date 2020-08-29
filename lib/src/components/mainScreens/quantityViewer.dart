import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuantityViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 5.0,
          ),
          child: Text(
            'الكميه',
            style: TextStyle(
              color: Colors.grey,
              fontSize: screen.size.height > 600 ? 18.0 : 16.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: screen.size.width > 360 ? 25.0 : 15.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 0.5,
                offset: Offset(
                  0,
                  0.5,
                ),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                 Image.asset('assets/iconsData/num.png'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'العدد',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: screen.size.height > 600.0 ? 16.0 : 14.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '20 منتح',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: screen.size.height > 600.0 ? 18.0 : 16.0,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                height: 20.0,
                indent: 0.0,
              ),
              Row(
                children: <Widget>[
                  Image.asset('assets/iconsData/pay.png'),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'اجمالى السعر',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: screen.size.height > 600.0 ? 18.0 : 16.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '200رس',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: screen.size.height > 600.0 ? 18.0 : 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

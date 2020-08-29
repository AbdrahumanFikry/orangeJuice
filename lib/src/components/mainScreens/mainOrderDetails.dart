import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainOrderDetails extends StatelessWidget {
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
            'بيانات الطلب الاساسيه',
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
                  SizedBox(
                    child: Text(
                      'رقم الطلب 63251',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: screen.size.height > 600.0 ? 18.0 : 16.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    width: screen.size.width * 0.35,
                  ),
                  Spacer(),
                  SizedBox(
                    child: Text(
                      'طماطم+برتقال+موز',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: screen.size.height > 600.0 ? 18.0 : 16.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    width: screen.size.width * 0.35,
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  const Icon(
                    Icons.date_range,
                    size: 18.0,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  SizedBox(
                    child: Text(
                      'تاريخ الطلب 12/5/2020',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: screen.size.height > 600.0 ? 16.0 : 14.0,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    width: screen.size.width * 0.5,
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

import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';

class OrderDetail extends StatelessWidget {
  final bool finished;

  OrderDetail({
    this.finished = false,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            const SizedBox(
              height: 70.0,
            ),
            CustomBlock(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                     Image.asset('assets/iconsData/orange.png'),
                      const SizedBox(
                        width: 5.0,
                      ),
                      SizedBox(
                        width: screen.size.width * 0.3,
                        child: Text(
                          'برتقال سودانى',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: screen.size.height > 600 ? 18 : 14),
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                        ),
                      ),
                      const SizedBox(
                        width: 30.0,
                      ),
                      Image.asset('assets/iconsData/shape.png'),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '12/3/2020',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: screen.size.height > 600 ? 18 : 14),
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: <Widget>[
                      Image.asset('assets/iconsData/bascket.png'),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        '380 كيلو',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: screen.size.height > 600 ? 18 : 14),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        Positioned(
          right: 20.0,
          top: 30.0,
          child: Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.orange,
              ),
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: Icon(
              finished ? Icons.location_on : Icons.history,
              color: Colors.orange.withOpacity(0.5),
              size: 30.0,
            ),
          ),
        ),
        Positioned(
          right: 100.0,
          top: 35.0,
          child: Text(
            'بيانات الطلب',
            style: TextStyle(
                color: Colors.black,
                fontSize: screen.size.height > 600 ? 20 : 15),
          ),
        )
      ],
    );
  }
}

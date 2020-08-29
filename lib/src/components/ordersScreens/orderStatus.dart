import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';

class OrderStatus extends StatelessWidget {
  final List<Widget> timeLine;

  OrderStatus({
    @required this.timeLine,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.green,
              ),
              Text(
                'حاله الطلب',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: screen.size.height > 600 ? 20 : 15),
              ),
            ],
          ),
        ),
        CustomBlock(
          child: Column(
            children: timeLine,
          ),
        )
      ],
    );
  }
}

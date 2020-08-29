import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';

class CheckOutProgress extends StatelessWidget {
  final bool isPayment;

  CheckOutProgress({
    this.isPayment = false,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return CustomBlock(
      margin: const EdgeInsets.symmetric(
        vertical: 5.0,
      ),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 5.0,
                width: double.infinity,
                color: Colors.grey[400],
                margin: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 17.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 17.0,
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.checkCircle,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 17.0,
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.checkCircle,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor:
                        isPayment ? Colors.orange : Colors.grey[400],
                    radius: 17.0,
                    child: Center(
                      child: Icon(
                        isPayment
                            ? FontAwesomeIcons.checkCircle
                            : FontAwesomeIcons.circle,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'السله',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                  color: Colors.black,
                ),
              ),
              Text(
                'الشحن',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                  color: Colors.black,
                ),
              ),
              Text(
                'الدفع',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

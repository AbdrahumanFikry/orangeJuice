import 'package:flutter/material.dart';
import 'package:orange_juice/src/ui/ordersScreens/completedOrderDetailScreen.dart';
import 'package:orange_juice/src/ui/ordersScreens/currentOrderDetailScreen.dart';

class OrderHolder extends StatelessWidget {
  final String title;
  final String dateOfRequest;
  final String quantityOfRequest;
  final bool isCompleted;

  OrderHolder({
    this.isCompleted = false,
    this.title,
    this.dateOfRequest,
    this.quantityOfRequest,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return GestureDetector(
      onTap: () {
        isCompleted
            ? Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CompletedOrderDetailScreen(),
                ),
              )
            : Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CurrentOrderDetailScreen(),
                ),
              );
      },
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 2.0,
              vertical: 7.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: screen.size.width > 365 ? 38 : 34,
                  width: screen.size.width > 365 ? 38 : 34,
                  decoration: BoxDecoration(
                    color: Colors.orange[100],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: isCompleted
                      ? Icon(
                          Icons.location_on,
                          color: Colors.orange.withOpacity(0.5),
                          size: screen.size.height > 600 ? 26 : 22,
                        )
                      : Icon(
                          Icons.history,
                          color: Colors.red.withOpacity(0.5),
                          size: screen.size.height > 600 ? 26 : 22,
                        ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: screen.size.height > 600.0 ? 22.0 : 16.0,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'assets/iconsData/shape.png',
                            ),
                            const SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              dateOfRequest,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: screen.size.height > 600 ? 14 : 11,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              'assets/iconsData/bascket.png',
                            ),
                            const SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              quantityOfRequest,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: screen.size.height > 600 ? 14 : 11,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 10.0,
            indent: 70,
            thickness: 1.0,
          ),
        ],
      ),
    );
  }
}

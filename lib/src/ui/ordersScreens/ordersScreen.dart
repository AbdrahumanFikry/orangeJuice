import 'package:flutter/material.dart';
import 'package:orange_juice/src/ui/ordersScreens/completedOrdersScreen.dart';
import 'package:orange_juice/src/ui/ordersScreens/currentOrdersScreen.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'الطلبات',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 22.0 : 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              elevation: 0.4,
              backgroundColor: Colors.white,
              bottom: TabBar(
                indicatorColor: Colors.orange,
                tabs: [
                  Text(
                    'الطلبات الحاليه',
                    style: TextStyle(
                      fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'الطلبات المنتهيه',
                    style: TextStyle(
                      fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                      color: Colors.black,
                    ),
                  ),
                ],
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
            body: TabBarView(
              children: [
                CurrentOrdersScreen(),
                CompletedOrdersScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

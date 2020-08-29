import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';
import 'package:orange_juice/src/components/ordersScreens/orderHolder.dart';

class CurrentOrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBlock(
      margin: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 10.0,
      ),
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (ctx, index) {
          return OrderHolder(
            title: 'فواكه مشكله',
            isCompleted: false,
            dateOfRequest: 'تاريخ الطلب 12/12/2020',
            quantityOfRequest: '590 كيلو',
          );
        },
      ),
    );
  }
}

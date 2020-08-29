import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/mainScreens/itemHolder.dart';

class ProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
              vertical: 10.0,
            ),
            child: Text(
              'الفواكه',
              style: TextStyle(
                fontSize: screen.size.height > 600 ? 22.0 : 18.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ItemHolder();
              },
            ),
          ),
        ],
      ),
    );
  }
}

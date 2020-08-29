import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/mainScreens/cartItem.dart';

class CartProducts extends StatelessWidget {
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
            'المنتجات',
            style: TextStyle(
              color: Colors.grey,
              fontSize: screen.size.height > 600 ? 18.0 : 16.0,
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) {
            return CartItem();
          },
        ),
        const SizedBox(
          height: 90,
        ),
      ],
    );
  }
}

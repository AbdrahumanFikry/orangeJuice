import 'package:flutter/material.dart';

class AddressData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.orange.withOpacity(0.5),
              radius: 18.0,
              child: Center(
                child: Icon(
                  Icons.home,
                  color: Colors.orange,
                  size: 18.0,
                ),
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Text(
                'الرياض - أبو جمام - الدمام - شارع 5',
                style: TextStyle(
                  fontSize: screen.size.height > 600 ? 16 : 14,
                  color: Colors.grey,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
            Icon(
              Icons.delete_outline,
              color: Colors.grey,
              size: 20.0,
            ),
          ],
        ),
        Divider(
          height: 10.0,
          indent: 0.0,
          color: Colors.grey,
        ),
      ],
    );
  }
}

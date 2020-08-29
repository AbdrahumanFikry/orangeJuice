import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';

class RepresentativeNotes extends StatelessWidget {
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
                'ملاحظات المندوب',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: screen.size.height > 600 ? 18 : 16),
              ),
            ],
          ),
        ),
        CustomBlock(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Image.asset('assets/iconsData/Path.png'),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'محمد عصام محمد احمد',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: screen.size.height > 600 ? 18 : 16),
                  ),
                  Text(
                    'انا فى الطريق جهز الفلوس',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: screen.size.height > 600 ? 16 : 14),
                    softWrap: true,
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

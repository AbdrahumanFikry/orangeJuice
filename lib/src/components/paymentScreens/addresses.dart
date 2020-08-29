import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';

class Addresses extends StatelessWidget {
  final bool isConfirm;

  Addresses({
    this.isConfirm = false,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
          ),
          child: isConfirm
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'عنوان التوصيل',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'العناويين',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                        color: Colors.orange,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2.5,
                        width: double.infinity,
                        color: Colors.grey[300],
                        margin: const EdgeInsets.only(
                          right: 10.0,
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        CustomBlock(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.grey[400],
                    size: 18.0,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Text(
                      'جده -شلرع قريش',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                        color: Colors.grey[400],
                      ),
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.phone,
                    color: Colors.grey[400],
                    size: 18.0,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Text(
                      '+966 559 999 676',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                        color: Colors.grey[400],
                      ),
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

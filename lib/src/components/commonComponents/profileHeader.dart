import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/block.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Stack(
      children: <Widget>[
        CustomBlock(
          margin: const EdgeInsets.only(
            top: 40.0,
          ),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 125.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    child: Text(
                      'محمد عبدالماجد محمد محمد',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 20 : 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    width: MediaQuery.of(context).size.width - 180,
                  ),
                  SizedBox(
                    child: Text(
                      'محمد عبدالماجد محمد محمد',
                      style: TextStyle(
                        fontSize: screen.size.height > 600 ? 16 : 14,
                        color: Colors.grey[500],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    width: MediaQuery.of(context).size.width - 180,
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 10.0,
          right: 10.0,
          child: Container(
            height: 150,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/testUser.jpg',
                  ),
                  fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0.5,
                  blurRadius: 2.0,
                  offset: Offset(
                    0,
                    0.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

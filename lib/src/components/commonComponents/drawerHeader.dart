import 'package:flutter/material.dart';

class DrawerMainData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
            top: 40.0,
            right: 130,
            bottom: 15.0,
            left: 10.0,
          ),
          margin: const EdgeInsets.only(
            top: 20.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.7),
                spreadRadius: 0.5,
                blurRadius: 0.5,
                offset: Offset(
                  0,
                  0.5,
                ),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'محمد عبدالماجد محمد محمد',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
              ),
              Text(
                'محمد عبدالماجد محمد محمد',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: screen.size.height > 600 ? 16.0 : 14.0,
                ),
                maxLines: 1,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 5.0,
          child: CircleAvatar(
            radius: 55,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(
              'assets/images/testUser.jpg',
            ),
          ),
        ),
      ],
    );
  }
}

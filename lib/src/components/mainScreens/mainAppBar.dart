import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/ui/mainScreens/cartScreen.dart';

class MainAppBar extends StatelessWidget {
  final bool secondary;

  MainAppBar({
    this.secondary = false,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15.0),
          bottomLeft: Radius.circular(15.0),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                splashColor: secondary ? Colors.grey : Colors.orange,
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Image.asset(
                  'assets/iconsData/drawer.png',
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              secondary
                  ? const SizedBox()
                  : const Text(
                      'اورانج فروتس',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              Spacer(),
              Stack(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => CartScreen(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/iconsData/cart.png',
                    ),
                  ),
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 8.0,
                      child: FittedBox(
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          secondary
              ? const SizedBox()
              : Container(
                  height: 40.0,
                  width: double.infinity,
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    border: Border.all(
                      color: Colors.grey[300],
                      width: 1.0,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '...Search',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                        ),
                      ),
                      const SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        FontAwesomeIcons.search,
                        color: Colors.grey[300],
                        size: 18.0,
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

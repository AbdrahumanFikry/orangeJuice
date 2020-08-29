import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/drawerElement.dart';
import 'package:orange_juice/src/ui/commonScreens/aboutAppScreen.dart';
import 'package:orange_juice/src/ui/commonScreens/userDataScreen.dart';
import 'package:orange_juice/src/ui/ordersScreens/ordersScreen.dart';

class DrawerBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 7.5),
        margin: const EdgeInsets.only(
          top: 30.0,
          left: 30.0,
          bottom: 10.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
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
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowGlow();
            return true;
          },
          child: ListView(
            children: <Widget>[
              DrawerElement(
                elementIcon: 'assets/iconsData/language.png',
                title: 'اللغه',
                trailing: Text(
                  'العربيه',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
                onTab: () {
                  //TODO ----------
                },
              ),
              DrawerElement(
                elementIcon: 'assets/iconsData/user.png',
                title: 'تعديل الملف الشخصى',
                onTab: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => UserDataScreen(),
                    ),
                  );
                },
              ),
              DrawerElement(
                elementIcon: 'assets/iconsData/edit.png',
                title: 'الطلبات',
                onTab: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => OrdersScreen(),
                    ),
                  );
                },
              ),
//              DrawerElement(
//                elementIcon: 'assets/iconsData/Bike.png',
//                title: 'بيانات التوصيل',
//                onTab: () {
//                  //TODO ----------
//                },
//              ),
              DrawerElement(
                elementIcon: 'assets/iconsData/mobile.png',
                title: 'عن التطبيق',
                onTab: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => AboutAppScreen(),
                    ),
                  );
                },
              ),
              DrawerElement(
                elementIcon: 'assets/iconsData/phone.png',
                title: 'للشكاوى والتعليقات',
                onTab: () {
                  //TODO ----------
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

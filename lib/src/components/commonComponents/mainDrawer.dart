import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/drawerBody.dart';
import 'package:orange_juice/src/components/commonComponents/drawerHeader.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Drawer(
          elevation: 0.0,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 25.0,
              ),
              DrawerMainData(),
              DrawerBody(),
            ],
          ),
        ),
      ),
    );
  }
}

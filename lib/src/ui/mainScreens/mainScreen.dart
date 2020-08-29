import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/mainDrawer.dart';
import 'package:orange_juice/src/components/mainScreens/mainAppBar.dart';
import 'package:orange_juice/src/components/mainScreens/mainBody.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              MainAppBar(),
              MainBody(),
            ],
          ),
          drawer: MainDrawer(),
        ),
      ),
    );
  }
}

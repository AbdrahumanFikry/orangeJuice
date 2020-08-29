import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveCircularProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isIos = Platform.isIOS;
    return isIos
        ? CupertinoActivityIndicator(
            radius: 20.0,
          )
        : CircularProgressIndicator();
  }
}

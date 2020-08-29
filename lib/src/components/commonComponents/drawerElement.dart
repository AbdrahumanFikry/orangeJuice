import 'package:flutter/material.dart';

class DrawerElement extends StatelessWidget {
  final Function onTab;
  final String elementIcon;
  final String title;
  final Widget trailing;

  DrawerElement({
    this.title,
    this.elementIcon,
    this.trailing,
    this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
        onTab();
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(elementIcon),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: screen.size.height > 600 ? 18.0 : 16.0,
                    ),
                    maxLines: 1,
                  ),
                  Spacer(),
                  trailing == null ? SizedBox() : trailing,
                ],
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.grey,
              indent: 0.0,
            ),
          ],
        ),
      ),
    );
  }
}

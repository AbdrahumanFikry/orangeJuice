import 'package:flutter/material.dart';

class OrangeJuiceButton extends StatelessWidget {
  final String title;
  final Color buttonColor;
  final Function onTap;
  final IconData buttonIcon;

  OrangeJuiceButton({
    this.title = 'Button',
    this.buttonColor,
    this.onTap,
    this.buttonIcon,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15.0,
          ),
        ),
        elevation: 1.0,
        margin: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        child: Container(
          height: 60.0,
          width: screen.size.width > 400 ? 400.0 : screen.size.width,
          decoration: BoxDecoration(
            color: buttonColor,
            gradient: buttonColor != null
                ? null
                : LinearGradient(
                    colors: [
                      Colors.orange[500],
                      Colors.orange[900],
                    ],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
            borderRadius: BorderRadius.circular(
              15.0,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buttonIcon == null
                  ? SizedBox()
                  : Padding(
                      padding: const EdgeInsets.only(
                        right: 30.0,
                      ),
                      child: Icon(
                        buttonIcon,
                        size: 20.0,
                        color: Colors.white,
                      ),
                    ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

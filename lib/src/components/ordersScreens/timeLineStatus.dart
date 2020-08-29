import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class TimeLineStatus extends StatelessWidget {
  final String title;
  final String subTitle;
  final String icon;

  TimeLineStatus({
    this.title,
    this.subTitle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                decoration: new BoxDecoration(
                  color: Colors.orange.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(icon),
              ),
             const SizedBox(
                height: 5.0,
              ),
              Dash(
                direction: Axis.vertical,
                length: 70.0,
                dashLength: 10,
                dashColor: Colors.grey,
              )
            ],
          ),
        ),
       const SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 9,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screen.size.height>600?18:16
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: screen.size.height>600?16:12
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TimeLineLastRawOrderStatus extends StatelessWidget {
  final String title;
  final String subTitle;
  final String icon;

  TimeLineLastRawOrderStatus({
    this.subTitle,
    this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                decoration: new BoxDecoration(
                  color: Colors.orange[100],
                  shape: BoxShape.circle,
                ),
                child: Image.asset(icon),
              ),
              Container(
                width: 3,
                height: 20,
                decoration: new BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.rectangle,
                ),
              ),
            ],
          ),
        ),
      const  SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screen.size.height>600?20:18
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: screen.size.height>600?18:14
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 4,
              )
            ],
          ),
        ),
      ],
    );
  }
}

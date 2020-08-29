import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/ui/paymentScreens/confirmScreen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

enum DialogType {
  Rate,
  ConfirmPayment,
  DonePayment,
  Error,
}

class GlobalAlertDialog {
  static Widget body = Container();

  static void show({
    @required BuildContext context,
    @required DialogType dialogType,
    String errorMessage,
  }) {
    if (dialogType == DialogType.Rate) {
      body = RateContent();
    } else if (dialogType == DialogType.DonePayment) {
      body = DoneContent();
    } else if (dialogType == DialogType.ConfirmPayment) {
      body = ConfirmPaymentContent();
    } else {
      body = ErrorContent(
        errorMessage: errorMessage,
      );
    }
    showDialog(
      context: context,
      builder: (ctx) => DialogStructure(
        content: body,
      ),
    );
  }
}

class DialogStructure extends StatelessWidget {
  final Widget content;

  DialogStructure({
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: const EdgeInsets.all(0.0),
      content: Container(
        width: screen.size.width > 400.0
            ? 400.0
            : MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            content,
          ],
        ),
      ),
    );
  }
}

class RateContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
          ),
          child: Center(
            child: Text(
              'تقييم المندوب',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Center(
          child: SmoothStarRating(
            allowHalfRating: true,
            onRated: (v) {},
            starCount: 5,
            rating: 0.0,
            size: 36.0,
            isReadOnly: true,
            color: Colors.orange,
            borderColor: Colors.orange,
            spacing: 0.0,
          ),
        ),
        OrangeJuiceButton(
          title: 'تقييم',
          buttonColor: Colors.orange,
          onTap: () {
            //TODO Rate ------------
          },
        ),
      ],
    );
  }
}

class DoneContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.green,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 75.0,
          ),
          child: Center(
            child: Text(
              'تم الدفع بنجاح',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ConfirmPaymentContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
          ),
          child: Center(
            child: Text(
              'تأكيد عمليه الدفع',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          child: OrangeJuiceButton(
            buttonColor: Colors.green,
            title: 'موافق',
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ConfirmScreen(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ErrorContent extends StatelessWidget {
  final String errorMessage;

  ErrorContent({
    this.errorMessage = 'Null',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
          ),
          child: Center(
            child: Text(
              'تحذير',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).errorColor,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5.0,
          ),
          child: Center(
            child: Text(
              errorMessage,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).errorColor,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
          ),
          child: OrangeJuiceButton(
            buttonColor: Theme.of(context).errorColor,
            title: 'موافق',
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class VerificationCodeScreen extends StatelessWidget {
  void _resendCode() {
    //TODO Resend verification code --------------
  }

  void _verify(BuildContext context) async {
    FocusScope.of(context).requestFocus(new FocusNode());
//    await Provider.of<Auth>(context, listen: false).login();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
//          key: ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: screen.size.height * 0.2,
                width: screen.size.width,
                margin: const EdgeInsets.only(
                  top: 20.0,
                  bottom: 30.0,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(
                      'assets/images/logo.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                ),
                child: PinCodeTextField(
                  pinBoxWidth: screen.size.width > 400.0 ? 75.0 : 60.0,
                  pinBoxHeight: screen.size.width > 400.0 ? 75.0 : 60.0,
                  pinBoxRadius: 10.0,
                  highlight: true,
                  highlightColor: Colors.orange,
                  defaultBorderColor: Colors.grey[300],
                  pinBoxColor: Colors.grey[100],
                  hasTextBorderColor: Colors.grey[400],
                  maxLength: 4,
                  errorBorderColor: Theme.of(context).errorColor,
                  onDone: null,
                  pinBoxDecoration:
                      ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                  pinTextStyle: TextStyle(
                    fontFamily: 'Cairo',
                    fontSize: 18.0,
                    color: Colors.orange,
                  ),
                  pinTextAnimatedSwitcherTransition:
                      ProvidedPinBoxTextAnimation.scalingTransition,
                  pinTextAnimatedSwitcherDuration: Duration(milliseconds: 200),
                  highlightAnimationBeginColor: Colors.black,
                  highlightAnimationEndColor: Colors.white12,
                  keyboardType: TextInputType.text,
                ),
              ),
              Text(
                'ارسلنا رمز التأكيد الى رقم الهاتف',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: screen.size.height > 600 ? 22.0 : 18.0,
                ),
                textAlign: TextAlign.center,
              ),
              OrangeJuiceButton(
                title: 'تأكيد التسجيل',
                buttonColor: Colors.orange,
                onTap: () => _verify(context),
                buttonIcon: FontAwesomeIcons.solidPaperPlane,
              ),
              OrangeJuiceButton(
                title: 'اعاده ارسال الرمز',
                buttonColor: Colors.orange.withOpacity(0.6),
                onTap: () => _verify(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

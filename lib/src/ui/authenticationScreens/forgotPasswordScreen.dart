import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:orange_juice/src/components/commonComponents/inputWidget.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/components/commonComponents/pageRouts.dart';
import 'package:orange_juice/src/ui/authenticationScreens/verificationCodeScreen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final bool send = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Form(
//          key: ,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: send ? sendSuccess(context) : dataFormWidget(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget dataFormWidget(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: screen.size.height * 0.2,
          width: screen.size.width,
          margin: const EdgeInsets.only(
            top: 20.0,
            bottom: 50.0,
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
        InputWidget(
          hintText: 'الاسم',
          isPassword: false,
          onSaved: null,
          validator: null,
        ),
        InputWidget(
          hintText: 'رقم الهاتف',
          isPassword: false,
          onSaved: null,
          validator: null,
          keyboardType: TextInputType.phone,
        ),
        OrangeJuiceButton(
          title: 'استعاده كلمه المرور',
          buttonColor: Colors.orange,
          onTap: () => _restorePassword(context),
        ),
      ],
    );
  }

  Widget sendSuccess(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: screen.size.height * 0.2,
          width: screen.size.width,
          margin: const EdgeInsets.only(
            top: 20.0,
            bottom: 50.0,
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
          child: Icon(
            FontAwesomeIcons.checkCircle,
            color: Colors.black,
            size: 80.0,
          ),
        ),
        Text(
          'تم ارسال كلمه مرور جديده فى رقم الهاتف',
          style: TextStyle(
            color: Colors.grey,
            fontSize: screen.size.height > 600 ? 22.0 : 18.0,
          ),
          textAlign: TextAlign.center,
        ),
        OrangeJuiceButton(
          title: 'موافق',
          buttonColor: Colors.orange,
          onTap: () => _verify(context),
        ),
      ],
    );
  }

  void _restorePassword(BuildContext context) async {
    FocusScope.of(context).requestFocus(new FocusNode());
    //ToDO Restore --------
  }

  void _verify(BuildContext context) async {
    FocusScope.of(context).requestFocus(new FocusNode());
    Navigator.of(context).push(
      FadeRoute(
        page: VerificationCodeScreen(),
      ),
    );
  }
}

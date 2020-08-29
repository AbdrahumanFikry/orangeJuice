import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:orange_juice/src/components/commonComponents/inputWidget.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/components/commonComponents/pageRouts.dart';
import 'package:orange_juice/src/ui/authenticationScreens/verificationCodeScreen.dart';

class RegisterScreen extends StatelessWidget {
  void _register(BuildContext context) async {
    FocusScope.of(context).requestFocus(new FocusNode());
    //ToDO Register --------
    Navigator.of(context).push(
      FadeRoute(
        page: VerificationCodeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData screen = MediaQuery.of(context);
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Form(
//          key: ,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Column(
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
                    InputWidget(
                      hintText: 'كلمه المرور',
                      isPassword: true,
                      onSaved: null,
                      validator: null,
                    ),
                    OrangeJuiceButton(
                      title: 'تسجيل جديد',
                      buttonColor: Colors.orange,
                      onTap: () => _register(context),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

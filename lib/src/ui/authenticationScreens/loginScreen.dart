import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:orange_juice/src/components/commonComponents/inputWidget.dart';
import 'package:orange_juice/src/components/commonComponents/orangeJuiceButton.dart';
import 'package:orange_juice/src/components/commonComponents/pageRouts.dart';
import 'package:orange_juice/src/ui/authenticationScreens/forgotPasswordScreen.dart';
import 'package:orange_juice/src/ui/authenticationScreens/registerScreen.dart';
import 'package:orange_juice/src/ui/mainScreens/mainScreen.dart';

class LoginScreen extends StatelessWidget {
  void _login(BuildContext context) async {
    FocusScope.of(context).requestFocus(new FocusNode());
    //ToDO login --------
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => MainScreen(),
      ),
    );
  }

  void _forgotPassword(BuildContext context) async {
    FocusScope.of(context).requestFocus(new FocusNode());
    Navigator.of(context).push(
      FadeRoute(
        page: ForgotPasswordScreen(),
      ),
    );
  }

  void _register(BuildContext context) async {
    FocusScope.of(context).requestFocus(new FocusNode());
    Navigator.of(context).push(
      FadeRoute(
        page: RegisterScreen(),
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
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
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
                Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: screen.size.height > 600 ? 22.0 : 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                InputWidget(
                  prefixIcon: 'assets/iconsData/user.png',
                  hintText: 'الاسم',
                  isPassword: false,
                  onSaved: null,
                  validator: null,
                ),
                InputWidget(
                  prefixIcon: 'assets/iconsData/orange.png',
                  hintText: 'كلمه المرور',
                  isPassword: true,
                  onSaved: null,
                  validator: null,
                ),
                OrangeJuiceButton(
                  title: 'تسجيل الدخول',
                  buttonColor: Colors.orange,
                  onTap: () => _login(context),
                ),
                GestureDetector(
                  onTap: () => _forgotPassword(context),
                  child: Text(
                    'نسيت كلمه المرور',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: screen.size.height > 600 ? 14.0 : 12.0,
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    const Divider(
                      color: Colors.grey,
                      indent: 0.0,
                      height: 40.0,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 18.0,
                        child: Text(
                          'او',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
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
    );
  }
}

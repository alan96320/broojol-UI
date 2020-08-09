import 'package:broojol/awal/authScreen.dart';
import 'package:broojol/config/jumpSccren.dart';
import 'package:broojol/config/warna.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            // gradient: Warna.mainGrad,
            color: Warna.a15c65),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo_white.png',
                width: 100,
                height: 100,
                color: Warna.fff0f1,
              ),
              Image.asset(
                'assets/images/logo_text.png',
                width: 100,
                color: Warna.fff0f1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      replaceScreen(context, AuthScreen());
    });
    // Future.delayed(Duration(seconds: 3)).then((_) {
    //   // LoginService.getNama().then((s){
    //   //   if (s == '') {
    //   //     replaceScreen(context, AuthScreen());
    //   //   }else{
    //   //     replaceScreen(context, LoginNextScreen(value: s));
    //   //   }
    //   // });
    // });
    super.initState();
  }
}

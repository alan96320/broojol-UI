import 'package:broojol/config/customDivider.dart';
import 'package:broojol/config/language/localization.dart';
import 'package:broojol/config/warna.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String masuk = 'Masuk';
  String daftar = 'Daftar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(elevation: 0, backgroundColor: Warna.a15c65, actions: <Widget>[
        Theme(
            data: Theme.of(context).copyWith(
              cardColor: Colors.transparent,
            ),
            child: PopupMenuButton<String>(
              onSelected: (String choice) {
                AppLanguage lang = Provider.of(context, listen: false);
                setState(() {
                  lang.changeLanguage(Locale(choice));
                  if (choice == 'en') {
                    masuk = 'Login';
                    daftar = 'Register';
                  } else {
                    masuk = 'Masuk';
                    daftar = 'Daftar';
                  }
                });
                print(choice);
              },
              itemBuilder: (BuildContext context) {
                return ListLanguage.choices.map((String choice) {
                  return PopupMenuItem(
                      value: choice,
                      child: Center(
                        child: Image.asset(
                          'assets/images/${choice == "en" ? 'united-states-of-america-flag-icon-32' : 'indonesia-flag-icon-32'}.png',
                          width: 32,
                        ),
                      ));
                }).toList();
              },
              icon: Icon(
                Icons.language,
                color: Warna.fff0f1,
              ),
            ))
      ]),
      body: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Warna.a15c65,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              'assets/images/logo_white.png',
              width: 200,
              height: 200,
              color: Warna.fff0f1,
            ),
            Image.asset(
              'assets/images/logo_text.png',
              height: 80,
              color: Warna.fff0f1,
            ),
            ColumnDivider(space: 150),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Text(
                      masuk,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, color: Warna.fff0f1),
                    ),
                    shape: StadiumBorder(side: BorderSide(color: Warna.fff0f1)),
                    onPressed: () {
                      // startScreen(context, LoginScreen(),PageTransitionType.fade);
                    },
                  ),
                ),
                RowDivider(),
                Expanded(
                  child: FlatButton(
                    child: Text(
                      daftar,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold, color: Warna.fff0f1),
                    ),
                    shape: StadiumBorder(side: BorderSide(color: Warna.fff0f1)),
                    onPressed: () {
                      // startScreen(context, RegisterScreen(),PageTransitionType.fade);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// AppLocalization.of(context).translate('foods')

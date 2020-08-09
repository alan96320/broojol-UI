import 'package:broojol/awal/splashScreen.dart';
import 'package:broojol/config/language/localization.dart';
import 'package:broojol/config/warna.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          Provider(create: (_) => AppLanguage()),
        ],
        child: Consumer<AppLanguage>(
          // ignore: avoid_types_on_closure_parameters
          builder: (BuildContext context, language, Widget child) {
            return MaterialApp(
              theme: ThemeData(
                primaryColor: Warna.pinkPrimary,
                scaffoldBackgroundColor: Warna.bgLightPink,
                colorScheme:
                    ColorScheme.light(surface: Colors.black.withOpacity(.07)),
                cardTheme: CardTheme(
                  color: Colors.white,
                ),
              ),
              locale: language.locale,
              supportedLocales: [
                Locale('en'),
                Locale('id'),
              ],
              localizationsDelegates: [
                AppLocalization.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              home: Root(),
            );
          },
        ),
      ),
    );

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

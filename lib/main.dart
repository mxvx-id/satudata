import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Tambahkan ini
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:satudata/screens/MLSplashScreen.dart';
import 'package:satudata/store/AppStore.dart';
import 'package:satudata/utils/AppTheme.dart';
import 'package:satudata/utils/MLDataProvider.dart';
import 'package:nb_utils/nb_utils.dart';

AppStore appStore = AppStore();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialize(aLocaleLanguageList: languageList());

  appStore.toggleDarkMode(value: getBoolAsync('isDarkModeOnPref'));

  defaultRadius = 10;
  defaultToastGravityGlobal = ToastGravity.BOTTOM;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '${'MediLab'}${!isMobile ? ' ${platformName()}' : ''}',
        home: MLSplashScreen(),
        theme: !appStore.isDarkModeOn ? AppThemeData.lightTheme : AppThemeData.darkTheme,
        navigatorKey: navigatorKey,
        scrollBehavior: SBehavior(),
        
        // Tambahkan localization delegates
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        
        supportedLocales: [
          Locale('id', 'ID'),
          Locale('en', 'US'),
          // Locale('hi', 'IN'),
          // Locale('ar', 'AR'),
          // Locale('fr', 'FR'),

        ],
        
        localeResolutionCallback: (locale, supportedLocales) => locale,
      ),
    );
  }
}
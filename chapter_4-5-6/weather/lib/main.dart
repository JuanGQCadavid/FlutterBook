import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_App/models/src/app_settings.dart';
import 'package:weather_App/styles.dart';

void main() {
  AppSetings settings = AppSetings();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp])
  .then( (_) => runApp(MyApp(settings: settings)));
}

class MyApp extends StatelessWidget {

  final AppSetings settings;
  const MyApp({Key key, this.settings}) : super(key:key);

  @override
  Widget build(BuildContext context) {

    final theme = ThemeData(
      fontFamily: "Cabin",
      primaryColor: AppColor.midnightSky,
      accentColor: AppColor.midnightCloud,
      primaryTextTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColor.textColorDark,
            displayColor: AppColor.textColorDark,
          ),
      textTheme: Theme.of(context).textTheme.apply(
            bodyColor: AppColor.textColorDark,
            displayColor: AppColor.textColorDark,
          ),
    );

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


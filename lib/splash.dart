import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart' as schedule;

class SplashScreen extends StatefulWidget {
  static const routeName = '/';
  final Widget child;

  const SplashScreen({Key key, this.child}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _initApp();
    super.initState();
  }

  void _loadingSettings() {
    var brightness =
        schedule.SchedulerBinding.instance.window.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).primaryColor.withOpacity(0.7),
      statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
      //set brightness for icons, like dark background light icons
    ));
  }

  void _initApp() {}

  @override
  Widget build(BuildContext context) {
    _loadingSettings();

    return widget.child;
  }
}

import 'package:flutter/material.dart';
import 'package:complete_advanced_flutter/app/app.dart';

class MyApp extends StatelessWidget {
  static var instance;

  const MyApp({Key? key}) : super(key: key);

  void updateAppState(){
    MyApp.instance.appState = 10;
  }
  void getAppState(){
    print(MyApp.instance.appState);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

import 'package:padisahlar_app/page/siirler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:padisahlar_app/page/homepage.dart';
import 'package:padisahlar_app/translate.dart';
//import 'package:animated_splash/animated_splash.dart';


/*void main() {
  Function duringSplash = () {
    print('Something background process');
    int a = 123 + 23;
    print(a);

    if (a > 100)
      return 1;
    else
      return 2;
  };

  Map<int, Widget> op = {1: MyApp()};

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedSplash(
      imagePath: 'assets/mushrooms.gif',
      home: MyApp(),
      customFunction: duringSplash,
      duration: 3100,
      type: AnimatedSplashType.BackgroundProcess,
      outputAndHome: op,
    ),
  ));
}*/
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) => GetMaterialApp(
      translations: Messages(), // your translations
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en',
          'US'), // specify the fallback locale in case an invalid locale is selected.
      debugShowCheckedModeBanner: false,
      title: 'manubaslik'.tr,
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: Scaffold(
        body: SimpleAppBarPage(),
      ));
}

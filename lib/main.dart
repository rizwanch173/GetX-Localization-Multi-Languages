import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_with_getx/pages.dart';
import 'package:localization_with_getx/services_binder.dart';
import 'package:localization_with_getx/translations/languages.dart';
import 'package:shared_preferences/shared_preferences.dart';

String currentLanguage = "en,US";
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.containsKey('lang')) {
    currentLanguage = prefs.getString('lang')!;
  }

  runApp(
    MyApp(
      currentLanguage: currentLanguage,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.currentLanguage}) : super(key: key);
  final String currentLanguage;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale:
          Locale(currentLanguage.split(',')[0], currentLanguage.split(',')[1]),
      fallbackLocale:
          Locale(currentLanguage.split(',')[0], currentLanguage.split(',')[1]),
      initialBinding: ServicesBinder(),
      getPages: pages,
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
    );
  }
}

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsController extends GetxController {
  var isLoading = false.obs;
  var languages = "Languages".obs;

  var languagesList = [
    'English',
    'German',
    'French',
    'Italian',
  ].obs;

  var supportLang = SupportLang.english.obs;

  Future<bool?> saveLanguage({required String lang}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("lang", lang);
    return true;
  }
}

enum SupportLang {
  english,
  frenchFr,
  deGerman,
  italianIt,
}

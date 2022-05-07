import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../controllers/settings_controller.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);
  static SettingsController settingsController = Get.find();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF2F2F3E),
    ));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "settings".tr,
          style: const TextStyle(
            color: Color(0xFFffffff),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Container(
        color: Colors.grey.withOpacity(0.1),
        height: Get.height,
        width: Get.width,
        child: GetX<SettingsController>(
          init: SettingsController(),
          initState: (_) {},
          builder: (settingsController) {
            return Padding(
              padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            'languages'.tr,
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF2F2F3E),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          settingsController.supportLang.value =
                              SupportLang.english;
                          Get.updateLocale(const Locale('en', 'US'));
                          settingsController.saveLanguage(lang: "en,US");
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 2),
                          child: ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            contentPadding: const EdgeInsets.all(0),
                            minLeadingWidth: 25,
                            leading: Padding(
                              padding: const EdgeInsets.only(bottom: 0, top: 3),
                              child: Ink(
                                width: 25,
                                height: 25,
                                child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: settingsController
                                                .supportLang.value ==
                                            SupportLang.english
                                        ? Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF2F2F3E),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Container()),
                              ),
                            ),
                            title: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                settingsController.languagesList[0],
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF2F2F3E),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          settingsController.supportLang.value =
                              SupportLang.deGerman;

                          Get.updateLocale(const Locale('de', 'DE'));
                          settingsController.saveLanguage(lang: "de,DE");
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 2),
                          child: ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            contentPadding: const EdgeInsets.all(0),
                            minLeadingWidth: 25,
                            leading: Padding(
                              padding: const EdgeInsets.only(bottom: 0, top: 3),
                              child: Ink(
                                width: 25,
                                height: 25,
                                child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: settingsController
                                                .supportLang.value ==
                                            SupportLang.deGerman
                                        ? Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF2F2F3E),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Container()),
                              ),
                            ),
                            title: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                settingsController.languagesList[1],
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF2F2F3E),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          settingsController.supportLang.value =
                              SupportLang.frenchFr;

                          Get.updateLocale(const Locale('fr', 'FRE'));
                          settingsController.saveLanguage(lang: "fr,FRE");
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 2),
                          child: ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            contentPadding: const EdgeInsets.all(0),
                            minLeadingWidth: 25,
                            leading: Padding(
                              padding: const EdgeInsets.only(bottom: 0, top: 3),
                              child: Ink(
                                width: 25,
                                height: 25,
                                child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: settingsController
                                                .supportLang.value ==
                                            SupportLang.frenchFr
                                        ? Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF2F2F3E),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Container()),
                              ),
                            ),
                            title: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                settingsController.languagesList[2],
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF2F2F3E),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        onTap: () {
                          settingsController.supportLang.value =
                              SupportLang.italianIt;
                          Get.updateLocale(const Locale('it', 'ITA'));
                          settingsController.saveLanguage(lang: "it,ITA");
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 2),
                          child: ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            contentPadding: const EdgeInsets.all(0),
                            minLeadingWidth: 25,
                            leading: Padding(
                              padding: const EdgeInsets.only(bottom: 0, top: 3),
                              child: Ink(
                                width: 25,
                                height: 25,
                                child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                        width: 2,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: settingsController
                                                .supportLang.value ==
                                            SupportLang.italianIt
                                        ? Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                color: Color(0xFF2F2F3E),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Container()),
                              ),
                            ),
                            title: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                settingsController.languagesList[3],
                                style: TextStyle(
                                  fontSize: 13,
                                  color: const Color(0xFF2F2F3E),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

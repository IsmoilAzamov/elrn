//create update dialog abstract class

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../main.dart';
import '../constants/app_colors.dart';


void checkNewVersion(BuildContext context,
    {required String currentVersion}) async {
  final String collectionName = Platform.isAndroid ? 'android' : 'ios';
  final DocumentSnapshot<Map<String, dynamic>> doc = await FirebaseFirestore
      .instance
      .collection(collectionName)
      .doc('document')
      .get();
  bool forceUpdate = doc.get('force') ?? false;
  String version = doc.get('version') ?? currentVersion;
  String text = doc.get('text') ?? '';
  bool hasUpdate = await isNewerVersion(currentVersion, version);
  // print("+++++++++++++++++++");
  // print(forceUpdate);
  // print(text);
  // print(version);
  // print("+++++++++++++++++++");
  if (hasUpdate) {
    // print("+++++++++++++++++++");
    // print(forceUpdate);
    // print(text);
    // print(version);
    // print("+++++++++++++++++++");
    if (context.mounted) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return UpdateDialog(
              force: forceUpdate,
              description: text,
              version: version,
              androidLink: 'https://play.google.com/store/apps/details?id=uz.kontrakt.eduuz',
              iosLink: 'https://play.google.com/store/apps/details?id=uz.kontrakt.eduuz',
            );
          });
    }
    // newVersion.showUpdateDialog(
    //   context: context,
    //   versionStatus: status,
    //   dialogText: 'New Version is available in the store (${status.storeVersion}), update now!',
    //   dialogTitle: 'Update is Available!',
    // );
  }
}

Future<bool> isNewerVersion(String currentVersion, String version) async {
  final List<String> currentVersionParts = currentVersion.split('.');
  final List<String> versionParts = version.split('.');
  int oldVersion = int.parse(currentVersionParts.join());
  int newVersion = int.parse(versionParts.join());

  if (newVersion > oldVersion) {
    String dismissedTime = box.get('updateDismissedTime')??DateTime(2024, 1, 1).toString();
    String currentTime = DateTime.now().toString();
    if (dismissedTime.isNotEmpty) {
      DateTime dismissedDateTime = DateTime.parse(dismissedTime);
      DateTime currentDateTime = DateTime.parse(currentTime);
      Duration difference = currentDateTime.difference(dismissedDateTime);
      if (difference.inHours < 24) {
        return false;
      }
    }
    return true;
  } else if (newVersion == oldVersion) {
    return false;
  }

  return newVersion > oldVersion;
}

class UpdateDialog extends StatefulWidget {
  final String version;
  final String description;
  final String androidLink;
  final String iosLink;
  final bool force;

  const UpdateDialog(
      {Key? key,
        this.version = " ",
        required this.description,
        required this.androidLink,
        required this.iosLink,
        required this.force})
      : super(key: key);

  @override
  State<UpdateDialog> createState() => _UpdateDialogState();
}

class _UpdateDialogState extends State<UpdateDialog> {
  double screenHeight = 0;
  double screenWidth = 0;

  @override
  void dispose() {
    if (widget.force) {
      SystemNavigator.pop();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.fastLinearToSlowEaseIn,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: content(context),
      ),
    );
  }

  Widget content(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: screenHeight * 0.1,
          width: screenWidth / 1.5,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            color: AppColors.greenColor,
          ),
          child: const Center(
            child: Icon(
              Icons.error_outline_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
        Container(
          height: screenHeight / 3,
          width: screenWidth / 1.5,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 0,
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'about_update'.tr(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  widget.version,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Expanded(
                          flex: 6,
                          child: Scrollbar(
                            child: Scrollbar(
                              child: SingleChildScrollView(
                                child: Text(
                                  widget.description,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        !widget.force
                            ? Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              box.put('updateDismissedTime',
                                  DateTime.now().toString());

                              if(mounted)  Navigator.pop(context);
                            },
                            child: Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.indigo,
                                ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Center(
                                child: Text(
                                  'later'.tr().toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                            : const SizedBox(),
                        SizedBox(
                          width: !widget.force ? 16 : 0,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              if (Platform.isAndroid) {
                                await launchUrl(Uri.parse(widget.androidLink));
                              }
                              if (Platform.isIOS) {
                                await launchUrl(Uri.parse(widget.iosLink));
                              }
                            },
                            child: Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.greenColor,
                              ),
                              child: Center(
                                child: Text(
                                  'update'.tr().toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
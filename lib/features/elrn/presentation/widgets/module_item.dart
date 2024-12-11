import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../main.dart';
import '../../domain/entities/program/program_entity.dart';
import 'image_widget.dart';

class ModuleItem extends StatelessWidget {
  const ModuleItem({super.key, required this.item, required this.index});

  final CourseEntity item;
  final int index;


  @override
  Widget build(BuildContext context) {
    bool isDark = prefs.getString("theme") != 'light';
    return Container(
        height: 120,
        padding: const EdgeInsets.symmetric(vertical: 6),
        margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 0),
        child: Card(
          elevation: 6,
          shadowColor: isDark ? AppColors.bgDark : AppColors.blueColor,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                constraints: const BoxConstraints.expand(),
                // margin: const EdgeInsets.symmetric(horizontal: 12),

                decoration: BoxDecoration(
                    color: isDark ? AppColors.darkBlue : AppColors.blueColor,
                    border: Border.all(
                      color: Theme.of(context).primaryColorLight,
                      width: 0.5,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ImageWidget(
                          url: "https://lms.ihma.uz/api/Course/DownloadFile/${item.iconFileId}",
                          width: 55,
                          isCircular: true,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${getRomanNumber(index)}. ${item.title ?? ""}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/play.png',
                                        width: 16,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        " ${item.courseTopicCount ?? 0} ${"lessons".tr()}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/icons/clock.png',
                                        width: 16,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "${item.courseDuration} ${"days".tr()}",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const SizedBox()
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (item.canStart == false) circularPercent(item.completionPercent ?? 0),
                  ],
                ),
              ),
              if (item.canStart == true && !((item.courseTopicCount ?? 0) > 0))
                Container(
                  padding: const EdgeInsets.all(12),
                  constraints: const BoxConstraints.expand(),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Image.asset(
                          'assets/icons/lock.png',
                          width: 32,
                        ),
                      ),
                    ],
                  ),
                ),
              if (item.canStart == true && ((item.courseTopicCount ?? 0) > 0))
                Container(
                  constraints: const BoxConstraints.expand(),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            color: isDark ? AppColors.blueColor : AppColors.lightBgBlue,
                          ),
                          child: Text(
                            "start".tr(),
                            style:  TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: isDark ? Colors.white : AppColors.blueColor),
                          )),
                    ],
                  ),
                ),
            ],
          ),
        ));
  }
}

Widget circularPercent(double percent) {
  //circular progress bar
  return SizedBox(
    height: 64,
    width: 64,
    child: CircleAvatar(
      backgroundColor: AppColors.middleBlue,
      child: CircularPercentIndicator(
        radius: 32.0,
        lineWidth: 4.0,
        percent: percent / 100,
        circularStrokeCap: CircularStrokeCap.round,
        // backgroundColor: AppColors.middleBlue,
        // fillColor: AppColors.blueColor,
        animation: true,

        center: Text("$percent%", style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white)),

        progressColor: Colors.green,
      ),
    ),
  );
}

String getRomanNumber(int number) {
  if (number <= 0) {
    throw ArgumentError("Roman numerals cannot represent zero or negative numbers.");
  }

  String roman = "";
  int num = number;

  // Roman numeral values and corresponding symbols
  List<int> values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
  List<String> romanLetters = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];

  // Loop through the values array
  for (int i = 0; i < values.length; i++) {
    // While the current number is greater or equal to the Roman numeral value
    while (num >= values[i]) {
      roman += romanLetters[i]; // Append the corresponding Roman numeral letter
      num -= values[i]; // Subtract the value from the number
    }
  }

  return roman;
}

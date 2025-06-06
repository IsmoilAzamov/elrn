import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/presentation/widgets/image_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../main.dart';
import '../../domain/entities/program/program_entity.dart';

class ProgramItem extends StatelessWidget {
  const ProgramItem({super.key, required this.item,   this.showProgress});

  final ProgramEntity item;
  final bool? showProgress;

  @override
  Widget build(BuildContext context) {
    bool isDark = prefs.getString("theme") != 'light';
    return Container(
      height: showProgress == false ? 120 : 185,
      padding: const EdgeInsets.symmetric(vertical: 4),
      margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
      child: Card(
        elevation: 6,
        shadowColor: AppColors.bgDark,
        child: Container(
          padding: const EdgeInsets.all(8),

          // margin: const EdgeInsets.symmetric(horizontal: 12),

          decoration: BoxDecoration(
              color: isDark ? AppColors.bgDark : AppColors.blueColor,
              border: Border.all(
                color: isDark ? AppColors.lightBlue : AppColors.blueColor,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: isDark ? AppColors.blueColor : Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: ImageWidget(url: "https://lms.ihma.uz/api/Program/DownloadFile/${item.iconFileId}")),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Text(
                      item.title ?? "-",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              if(showProgress != false)
              const SizedBox( height: 4),
              if(showProgress != false)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/flash_on.png',
                        width: 12,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "${"modules_count".tr()}: ${item.courseTopicCount}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/hourglass.png',
                        width: 12,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,

                          child: Text(
                            "${"duration".tr()}: ${(item.programDuration?.month??0)>0 ? "${item.programDuration?.month} ${"months".tr()}" : ""} ${(item.programDuration?.day??0)>0 ? "${item.programDuration?.day} ${"days".tr()}" : ""}",
                            maxLines: 1,
                            overflow: TextOverflow.visible,
                            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              if(showProgress != false)
              Row(
                children: [
                  Image.asset(
                    'assets/icons/lesson.png',
                    width: 12,
                  ),
                  const SizedBox(
                    width: 8,

                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Text(
                      "${"lesson_count".tr()}: ${item.courseTopicChildCount ?? 0}",
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white),
                    ),
                  ),
                ],
              ),
              if(showProgress != false)
              const SizedBox(
                height: 6,
              ),
              if(showProgress != false)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: completionPercent(item.completionPercent ?? 0)),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    " ${item.completionPercent}%",
                    maxLines: 1,
                    overflow: TextOverflow.visible,
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget completionPercent(double percent) {
  return Container(
    // width: width,
    height: 5,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      child: LinearProgressIndicator(
        value: percent / 100,
        color: AppColors.greenColor,
        backgroundColor: Colors.white,
      ),
    ),
  );
}



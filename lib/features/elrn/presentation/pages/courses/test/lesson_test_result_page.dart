import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/constants/app_colors.dart';
import 'package:elrn/features/elrn/presentation/pages/courses/test/start_lesson_test_page.dart';
import 'package:elrn/features/elrn/presentation/pages/courses/video_lesson/video_lesson_page.dart';
import 'package:elrn/features/elrn/presentation/widgets/continue_button.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/my_lesson/my_lesson_entity.dart';
import '../../../widgets/my_scaffold.dart';

class LessonTestResultPage extends StatelessWidget {
  final LessonTestEntity testResult;

  const LessonTestResultPage({super.key, required this.testResult});

  @override
  Widget build(BuildContext context) {
    bool passed = (testResult.submissionLimit ?? 0) <= (testResult.completedPercent ?? 0) ? true : false;
    return MyScaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 12),
            Column(
              children: [
                Image.asset(
                  "assets/icons/trophy.png",
                  width: 120,
                ),
                const SizedBox(height: 8),
                Text(
                  "test_result".tr(),
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    passed ? "passed_text".tr() : "failed_text".tr(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: passed ? null : AppColors.redColor),
                  ),
                ),
              ],
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).primaryColorDark,
                  border: Border.all(color: AppColors.lightBlue, width: 0.5),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    testInfoRow(title: "${"tests_count".tr()}: ${testResult.questionCount}", iconName: "check.png"),
                    const SizedBox(height: 12),
                    customDivider(height: 1),
                    const SizedBox(height: 12),
                   testInfoRow(title: "${"correct_answers_count".tr()}: ${testResult.correctAnswersCount}", iconName: "correct.png"),
                    const SizedBox(height: 12),
                    customDivider(height: 1),
                    const SizedBox(height: 12),
                    testInfoRow(title:  "${"result".tr()}: ${testResult.testResult}%", iconName: "bar_chart.png")
                  ],
                )),
            continueButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              title: "back_to_lessons".tr(),
            ),
          ],
        ),
      ),
    );
  }
}

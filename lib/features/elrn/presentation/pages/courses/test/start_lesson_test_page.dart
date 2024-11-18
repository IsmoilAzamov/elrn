import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/entities/my_lesson/my_lesson_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/test/start_lesson_test/start_lesson_test_bloc.dart';
import 'package:elrn/features/elrn/presentation/pages/courses/test/lesson_test_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/widgets/loading_indicator.dart';
import '../../../../../../di.dart';
import '../../../bloc/test/start_lesson_test/start_lesson_test_event.dart';
import '../../../bloc/test/start_lesson_test/start_lesson_test_state.dart';
import '../../../widgets/continue_button.dart';
import '../../../widgets/error_widget.dart';
import '../../../widgets/my_scaffold.dart';
import '../video_lesson/video_lesson_page.dart';

class StartLessonTestPage extends StatefulWidget {
  final String testId;

  const StartLessonTestPage({super.key, required this.testId});

  @override
  State<StartLessonTestPage> createState() => _StartLessonTestPageState();
}

class _StartLessonTestPageState extends State<StartLessonTestPage> {
  final _bloc = sl<StartLessonTestBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(StartLessonTestLoadEvent(testId: widget.testId));
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
        body: BlocProvider(
      create: (context) => _bloc,
      child: BlocBuilder<StartLessonTestBloc, StartLessonTestState>(builder: (context, state) {
        if (state is StartLessonTestLoadingState) {
          return Center(child: loadingIndicator());
        }
        if (state is StartLessonTestErrorState) {
          return errorWidget(
            onPressed: () {
              _bloc.add(StartLessonTestLoadEvent(testId: widget.testId));
            },
            text: state.message,
          );
        }
        if (state is StartLessonTestLoadedState) {
          return _loadedUI(state.lessonTest);
        }
        return errorWidget(
            onPressed: () {
              _bloc.add(StartLessonTestLoadEvent(testId: widget.testId));
            },
            text: 'something_went_wrong'.tr());
      }),
    ));
  }

  Widget _loadedUI(LessonTestEntity testEntity) {
    return Container(
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
                "assets/icons/exam_paper.png",
                width: 120,
              ),
              const SizedBox(height: 8),
              Text(
                "test".tr(),
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "start_test_alert_text".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                  const SizedBox(height: 8),
                  testInfoRow(title: "${"tests_count".tr()}: ${testEntity.questionCount}", iconName: "check.png"),
                  const SizedBox(height: 12),
                  customDivider(height: 1),
                  const SizedBox(height: 12),
                  testInfoRow(title: "${"passing_score".tr()}: ${testEntity.submissionLimit}%", iconName: "bar_chart.png"),
                  const SizedBox(height: 12),
                  customDivider(height: 1),
                  const SizedBox(height: 12),
                  testInfoRow(title: "${"allotted_time".tr()}: ${(testEntity.totalDuration??0)/60} ${"minutes".tr()}", iconName: "alarm_clock.png"),
                  const SizedBox(height: 12),
                  customDivider(height: 1),
                  const SizedBox(height: 12),
                  testInfoRow(title: "start_test_alert_text".tr(), iconName: "alert_triangle.png", circleColor: AppColors.redColor),
                  const SizedBox(height: 8),
                ],
              )),
          continueButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LessonTestPage(
                    testId: widget.testId,
                  ),
                ),
              );
            },
            title: "start_test".tr(),
          ),
        ],
      ),
    );
  }
}

Widget testInfoRow({required String title, required String iconName, Color? circleColor}) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: circleColor ?? AppColors.middleBlue,
        ),
        child: Image.asset(
          "assets/icons/$iconName",
          width: 24,
          color: Colors.white,
        ),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    ],
  );
}

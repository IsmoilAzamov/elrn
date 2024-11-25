import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/widgets/loading_indicator.dart';
import 'package:elrn/features/elrn/domain/entities/test_result/test_result_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/test_results/test_results_bloc.dart';
import 'package:elrn/features/elrn/presentation/pages/courses/video_lesson/video_lesson_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../di.dart';
import '../../../../../main.dart';
import '../../bloc/test_results/test_results_event.dart';
import '../../bloc/test_results/test_results_state.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/my_scaffold.dart';
import '../../widgets/test_info_row.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  final _bloc = sl<TestResultsBloc>();

  TestResultEntity? selectedModule;
  CourseTestResultEntity? selectedCourse;
  CourseTopicTestResultEntity? selectedTopic;
  LessonTestResultEntity? selectedLesson;

  String expandKeyModule = "0";
  String expandKeyCourse = "0";
  String expandKeyTopic = "0";
  String expandKeyLesson = "0";

  @override
  void initState() {
    _bloc.add(TestResultsLoadEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: BlocProvider(
        create: (context) => _bloc,
        child: BlocBuilder<TestResultsBloc, TestResultsState>(
          bloc: _bloc,
          builder: (context, state) {
            if (state is TestResultsLoadingState) {
              return loadingIndicator();
            }
            if (state is TestResultsErrorState) {
              return errorWidget(
                onPressed: () {
                  _bloc.add(TestResultsLoadEvent());
                },
                text: state.message,
              );
            }
            if (state is TestResultsLoadedState) {
              return _loadedUI(state.programs);
            }
            return errorWidget(onPressed: () {}, text: 'something_went_wrong'.tr());
          },
        ),
      ),
    );
  }

  Widget _loadedUI(List<TestResultEntity> testResults) {
    bool isDark = prefs.getString("theme") != 'light';

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      height: MediaQuery.of(context).size.height * 0.9,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16,),
            Text(
              "select_course".tr(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            Container(
              decoration: BoxDecoration(
                color: isDark ? AppColors.bgDark : AppColors.middleBlue,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.lightBlue, width: 1),
              ),
              child: ExpansionTile(
                key: Key(expandKeyModule),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                dense: true,
                textColor: AppColors.greenColor,
                collapsedTextColor: Colors.white,
                collapsedIconColor: Colors.white,
                tilePadding: const EdgeInsets.symmetric(horizontal: 12),
                title: Text(
                  selectedModule?.programTitle ?? "select_course".tr(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                children: [
                  if (testResults.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: customDivider(
                        height: 1,
                      ),
                    ),
                  const SizedBox(height: 8),
                  if (testResults.isEmpty)
                    Center(
                      child: Text(
                        "nothing_found".tr(),
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: testResults.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: double.infinity,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedModule = testResults[index];
                              // Close the ExpansionTile by setting isExpanded to false
                              expandKeyModule = DateTime.now().millisecondsSinceEpoch.toString();
                              selectedCourse = null;
                              selectedTopic = null;
                              selectedLesson = null;
                            });
                          },
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                                  padding: const EdgeInsets.only(left: 12, right: 6),
                                  child: Text(
                                    testResults[index].programTitle ?? "",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: testResults[index].courses?.isEmpty ?? true ? AppColors.gray : Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              if (testResults[index].courses?.isEmpty ?? true)
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Image.asset(
                                    'assets/icons/lock.png',
                                    width: 20,
                                    height: 20,
                                    color: AppColors.gray,
                                  ),
                                ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            const SizedBox(height: 12),
            if (selectedModule != null)
              Text(
                "select_module".tr(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            const SizedBox(height: 6),
            if (selectedModule != null)
              Container(
                decoration: BoxDecoration(
                  color: isDark ? AppColors.bgDark : AppColors.middleBlue,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.lightBlue),
                ),
                child: ExpansionTile(
                  key: Key(expandKeyCourse),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  dense: true,
                  textColor: AppColors.greenColor,
                  collapsedTextColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  tilePadding: const EdgeInsets.symmetric(horizontal: 12),
                  title: Text(
                    selectedCourse?.courseTitle ?? "select_module".tr(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  children: [
                    if (selectedModule?.courses?.isNotEmpty ?? false)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: customDivider(
                          height: 1,
                        ),
                      ),
                    const SizedBox(height: 8),
                    if (selectedModule?.courses?.isEmpty ?? true)
                      Center(
                        child: Text(
                          "nothing_found".tr(),
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: selectedModule?.courses?.length ?? 0,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: double.infinity,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCourse = selectedModule?.courses?[index];
                                  // Close the ExpansionTile by setting isExpanded to false
                                  selectedLesson = null;
                                  selectedTopic = null;
                                  expandKeyCourse = DateTime.now().millisecondsSinceEpoch.toString();
                                });
                              },
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                                      padding: const EdgeInsets.only(left: 12, right: 6),
                                      child: Text(
                                        selectedModule?.courses?[index].courseTitle ?? "",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: selectedModule?.courses?.isEmpty ?? true ? AppColors.gray : Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (selectedModule?.courses?.isEmpty ?? true)
                                    SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: Image.asset(
                                        'assets/icons/lock.png',
                                        width: 20,
                                        height: 20,
                                        color: AppColors.gray,
                                      ),
                                    ),
                                  const SizedBox(width: 8),
                                ],
                              )),
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),

            const SizedBox(height: 12),
            if (selectedCourse != null)
              Text(
                "select_topic".tr(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            const SizedBox(height: 6),
            if (selectedCourse != null)
              Container(
                decoration: BoxDecoration(
                  color: isDark ? AppColors.bgDark : AppColors.middleBlue,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.lightBlue),
                ),
                child: ExpansionTile(
                  key: Key(expandKeyTopic),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  dense: true,
                  textColor: AppColors.greenColor,
                  collapsedTextColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  tilePadding: const EdgeInsets.symmetric(horizontal: 12),
                  title: Text(
                    selectedTopic?.courseTopicTitle ?? "select_topic".tr(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  children: [
                    if (selectedCourse?.courseTopics?.isNotEmpty ?? false)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: customDivider(
                          height: 1,
                        ),
                      ),
                    const SizedBox(height: 8),
                    if (selectedCourse?.courseTopics?.isEmpty ?? true)
                      Center(
                        child: Text(
                          "nothing_found".tr(),
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: selectedCourse?.courseTopics?.length ?? 0,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: double.infinity,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedTopic = selectedCourse?.courseTopics?[index];
                                  // Close the ExpansionTile by setting isExpanded to false
                                  selectedLesson = null;
                                  expandKeyTopic = DateTime.now().millisecondsSinceEpoch.toString();
                                });
                              },
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                                      padding: const EdgeInsets.only(left: 12, right: 6),
                                      child: Text(
                                        selectedCourse?.courseTopics?[index].courseTopicTitle ?? "",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: selectedCourse?.courseTopics?.isEmpty ?? true ? AppColors.gray : Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (selectedCourse?.courseTopics?.isEmpty ?? true)
                                    SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: Image.asset(
                                        'assets/icons/lock.png',
                                        width: 20,
                                        height: 20,
                                        color: AppColors.gray,
                                      ),
                                    ),
                                  const SizedBox(width: 8),
                                ],
                              )),
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),

            const SizedBox(height: 12),
            if (selectedTopic != null)
              Text(
                "select_lesson".tr(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            const SizedBox(height: 6),

            if (selectedTopic != null)
              Container(
                decoration: BoxDecoration(
                  color: isDark ? AppColors.bgDark : AppColors.middleBlue,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.lightBlue),
                ),
                child: ExpansionTile(
                  key: Key(expandKeyLesson),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  dense: true,
                  textColor: AppColors.greenColor,
                  collapsedTextColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  tilePadding: const EdgeInsets.symmetric(horizontal: 12),
                  title: Text(
                    selectedLesson?.lessonTitle ?? "select_lesson".tr(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  children: [
                    if (selectedLesson?.lessonTitle?.isNotEmpty ?? false)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: customDivider(
                          height: 1,
                        ),
                      ),
                    const SizedBox(height: 8),
                    if (selectedTopic?.lessonTestResults?.isEmpty ?? true)
                      Center(
                        child: Text(
                          "nothing_found".tr(),
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),

                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: selectedTopic?.lessonTestResults?.length ?? 0,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: double.infinity,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedLesson = selectedTopic?.lessonTestResults?[index];
                                  // Close the ExpansionTile by setting isExpanded to false

                                  expandKeyLesson = DateTime.now().millisecondsSinceEpoch.toString();
                                });
                              },
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                                      padding: const EdgeInsets.only(left: 12, right: 6),
                                      child: Text(
                                        selectedTopic?.lessonTestResults?[index].lessonTitle ?? "",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: selectedTopic?.lessonTestResults?.isEmpty ?? true ? AppColors.gray : Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (selectedTopic?.lessonTestResults?.isEmpty ?? true)
                                    SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: Image.asset(
                                        'assets/icons/lock.png',
                                        width: 20,
                                        height: 20,
                                        color: AppColors.gray,
                                      ),
                                    ),
                                  const SizedBox(width: 8),
                                ],
                              )),
                        );
                      },
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),

            const SizedBox(height: 24),
            if (selectedLesson != null)
              SizedBox(
                width: double.infinity,
                child: Text(
                  "your_result_for_this_lesson".tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
            const SizedBox(
              height: 8,
            ),
            if (selectedLesson != null)
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).primaryColorDark,
                    border: Border.all(color: AppColors.lightBlue, width: 0.5),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      testInfoRow(title: "${"tests_count".tr()}: ${selectedLesson?.questionsCount}", iconName: "check.png"),
                      const SizedBox(height: 12),
                      customDivider(height: 1),
                      const SizedBox(height: 12),
                      testInfoRow(title: "${"correct_answers_count".tr()}: ${selectedLesson?.correctAnswersCount}", iconName: "correct.png"),
                      const SizedBox(height: 12),
                      customDivider(height: 1),
                      const SizedBox(height: 12),
                      testInfoRow(
                          title: "${"result".tr()}: ${calculateResult(selectedLesson?.correctAnswersCount ?? 0, selectedLesson?.questionsCount ?? 0).toStringAsFixed(1)}%",
                          iconName: "bar_chart.png",
                          circleColor: calculateResult(selectedLesson?.correctAnswersCount ?? 0, selectedLesson?.questionsCount ?? 0) >= (selectedLesson?.passResult ?? 60)
                              ? AppColors.middleBlue
                              : AppColors.redColor),
                      const SizedBox(height: 12),
                      customDivider(height: 1),
                      const SizedBox(height: 12),
                      testInfoRow(title: "${"attempts_count".tr()}: ${selectedLesson?.attemptsCount}", iconName: "attempt.png"),
                    ],
                  )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }

  double calculateResult(int i, int j) {
    if (j == 0) {
      return 0;
    }
    return ((i / j) * 100);
  }
}

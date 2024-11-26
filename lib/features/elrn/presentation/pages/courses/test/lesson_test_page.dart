import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/di.dart';
import 'package:elrn/features/elrn/domain/entities/test/test_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/test/lesson_test/lesson_test_bloc.dart';
import 'package:elrn/features/elrn/presentation/widgets/continue_button.dart';
import 'package:elrn/features/elrn/presentation/widgets/toasts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/widgets/loading_indicator.dart';
import '../../../bloc/test/lesson_test/lesson_test_event.dart';
import '../../../bloc/test/lesson_test/lesson_test_state.dart';
import '../../../widgets/error_widget.dart';
import '../../../widgets/my_scaffold.dart';
import 'lesson_test_result_page.dart';

class LessonTestPage extends StatefulWidget {
  final String testId;

  const LessonTestPage({super.key, required this.testId});

  @override
  State<LessonTestPage> createState() => _LessonTestPageState();
}

class _LessonTestPageState extends State<LessonTestPage> {
  final _bloc = sl<LessonTestBloc>();
  late int _remainingSeconds;
  late Timer _timer;
  late QuestionEntity _currentQuestion;

  AnswerEntity? _selectedAnswer;
  int _currentQuestionIndex = 0;

  List<AnswerResultEntity> answerResults = [];

  @override
  void initState() {
    _bloc.add(LessonTestStartEvent(testId: widget.testId));
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingSeconds == 0) {
        if(answerResults.isEmpty) {
          Navigator.pop(context);

        }else{
          _bloc.add(LessonTestSubmitEvent(answerResults: answerResults));
        }

      }
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        _timer.cancel(); // Stop the timer when it reaches zero
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: MyScaffold(
        body: BlocProvider(
          create: (context) => _bloc,
          child: BlocConsumer<LessonTestBloc, LessonTestState>(listener: (context, state) {
            if (state is LessonTestLoadedState) {
              _remainingSeconds = (state.testEntity.totalDuration ?? 0.0).floor();
              if (state.testEntity.questions?.isNotEmpty ?? false) {
                _currentQuestion = state.testEntity.questions![_currentQuestionIndex];
              }
              _startTimer();
            }
            if (state is LessonTestSubmittedState) {
              SchedulerBinding.instance.addPostFrameCallback((_) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LessonTestResultPage(testResult: state.testResult),
                  ),
                );
              });
            }
          }, builder: (context, state) {
            if (state is LessonTestLoadingState) {
              return Center(child: loadingIndicator());
            }
            if (state is LessonTestErrorState) {
              return errorWidget(
                text: state.message,
                onPressed: () => _bloc.add(LessonTestStartEvent(testId: widget.testId)),
              );
            }
            if (state is LessonTestLoadedState) {
              return _loadedUI(state.testEntity);
            }
            return errorWidget(
              text: 'something_went_wrong'.tr(),
              onPressed: () => _bloc.add(LessonTestStartEvent(testId: widget.testId)),
            );
          }),
        ),
      ),
    );
  }

  Widget _loadedUI(TestEntity test) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _appBar(test),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  _questionCard("${_currentQuestionIndex + 1}-${"question".tr()}. ${_currentQuestion.questionText}"),
                  const SizedBox(
                    height: 12,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: _currentQuestion.answers?.length ?? 0,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return _answerCard(_currentQuestion.answers![index], index);
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  )
                ],
              ),
            ),
          ),
        ),
        if (_selectedAnswer != null)
          Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8),
            child: continueButton(
              onPressed: () {
                if (_selectedAnswer == null) {
                  showErrorToast("please_select_an_answer".tr());
                  return;
                }
                // if (_currentQuestionIndex == (test.questions?.length ?? 0) - 1) {
                //   //  _bloc.add(LessonTestSubmitEvent(testId: widget.testId, answerId: _selectedAnswer!.id));
                //   return;
                // }
                if (_currentQuestionIndex < (test.questions?.length ?? 0) - 1) {
                  answerResults.add(AnswerResultEntity(
                    questionId: _currentQuestion.id,
                    answerId: _selectedAnswer!.id,
                    ownerId: widget.testId,
                    duration: ((test.totalDuration ?? 0) - _remainingSeconds),
                    attemptId: test.attemptId,
                  ));
                  _currentQuestionIndex++;
                  _currentQuestion = test.questions![_currentQuestionIndex];
                  _selectedAnswer = null;
                  // _startTimer();
                  setState(() {});
                  return;
                }
                if (_currentQuestionIndex == (test.questions?.length ?? 0) - 1) {
                  answerResults.add(AnswerResultEntity(
                    questionId: _currentQuestion.id,
                    answerId: _selectedAnswer?.id,
                    ownerId: widget.testId,
                    duration: ((test.totalDuration ?? 0) - _remainingSeconds),
                    attemptId: test.attemptId,
                  ));

                  _bloc.add(LessonTestSubmitEvent(answerResults: answerResults));
                }
              },
              title: (_currentQuestionIndex == (test.questions?.length ?? 0) - 1) ? "finish_test".tr() : "next_question".tr(),
            ),
          )
      ],
    );
  }

  String _formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;

    String minutesStr = minutes.toString().padLeft(2, '0');
    String secondsStr = remainingSeconds.toString().padLeft(2, '0');

    return "$minutesStr:$secondsStr";
  }

  Widget _questionCard(String text) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 37.5),
          padding: const EdgeInsets.only(top: 44.0, bottom: 16.0, left: 8.0, right: 8.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBlue : AppColors.blueColor,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: Theme.of(context).brightness == Brightness.dark
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ]
                : [],
            border: Border.all(color: AppColors.lightBlue),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        //circle
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBlue : AppColors.blueColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
              border: Border.all(color: AppColors.lightBlue),
            ),
            child: Center(
              child: Image.asset(
                "assets/icons/book.png",
                width: 45,
                height: 45,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _answerCard(AnswerEntity answer, int index) {
    return GestureDetector(
      onTap: () {
        if (_selectedAnswer?.id == answer.id) {
          _selectedAnswer = null;
        } else {
          _selectedAnswer = answer;
        }
        setState(() {});
      },
      child: Container(
        margin: EdgeInsets.only(top: 12),
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 12.0, bottom: 12.0),
        decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? (_selectedAnswer?.id == answer.id ? AppColors.darkBlue : AppColors.bgDark)
              : (_selectedAnswer?.id == answer.id ? AppColors.blueColor : Colors.white),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
              color: Theme.of(context).brightness == Brightness.dark
                  ? (_selectedAnswer?.id == answer.id ? AppColors.greenColor : AppColors.lightBlue)
                  : (_selectedAnswer?.id == answer.id ? AppColors.darkBlue : AppColors.lightBlue)),
        ),
        child: Row(
          children: [
            //circle answer as A, B, C, D
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark ? (_selectedAnswer?.id == answer.id ? AppColors.darkBlue : AppColors.blueColor) : (AppColors.middleBlue),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  getLetterByIndex(index),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Text(
                answer.answerText ?? "",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Brightness.dark == Theme.of(context).brightness ? Colors.white : (_selectedAnswer?.id == answer.id ? Colors.white : AppColors.blueColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appBar(TestEntity test) {
    return Container(
      height: 62,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: Theme.of(context).brightness == Brightness.dark
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ]
              : [],
          border: Border(bottom: BorderSide(color: AppColors.lightBlue))),
      child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    if (_currentQuestionIndex < (test.questions?.length ?? 0) - 1) {
                      showElrnDialog(
                          context: context,
                          onConfirm: () {
                            if(answerResults.isEmpty) {
                              Navigator.pop(context);
                              return;
                            }
                            _bloc.add(LessonTestSubmitEvent(answerResults: answerResults));
                          },
                          title:answerResults.length<(test.questions?.length ?? 0) ? "finish_test_text1".tr() : "finish_test_text2".tr(),
                          imageUrl: 'assets/images/finish_test.png',
                          submitButtonText: "finish".tr(),
                          cancelButtonText: "continue".tr());
                    }
                  },
                  icon: Icon(Icons.close, color: Colors.white, size: 24)),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  height: 8,
                  child: LinearProgressIndicator(
                    borderRadius: BorderRadius.circular(4),
                    value: _remainingSeconds / (test.totalDuration ?? 0.0),
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.greenColor),
                    backgroundColor: AppColors.lightBlue,
                  ),
                ),
              ),
              SizedBox(
                width: 70,
                child: Text(
                  _formatTime(_remainingSeconds),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          )),
    );
  }

}

String getLetterByIndex(int index) {
  switch (index) {
    case 0:
      return "A";
    case 1:
      return "B";
    case 2:
      return "C";
    case 3:
      return "D";
    case 4:
      return "E";
    case 5:
      return "F";
    case 6:
      return "G";
    case 7:
      return "H";
    case 8:
      return "I";
    case 9:
      return "J";
    default:
      return "";
  }
}

showElrnDialog({
  required BuildContext context,
  required VoidCallback onConfirm,
  required String title,
  String? imageUrl,
  String? submitButtonText,
  String? cancelButtonText,
}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Dialog(
        backgroundColor: Theme.of(context).brightness == Brightness.light ? AppColors.middleBlue : AppColors.bgDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        insetPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            border: Border(top: BorderSide(color: Colors.white, width: 1), bottom: BorderSide(color: Colors.white, width: 1)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  GestureDetector(
                    child: Icon(Icons.close, color: Colors.white, size: 24),
                    onTap: () => Navigator.pop(context),
                  )
                ],
              ),
              Image.asset(
                imageUrl ?? "assets/images/finish_test.png",
                width: MediaQuery.of(context).size.width * 0.5,

              ),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              continueButton(
                elevation: 0,
                color: AppColors.lightBgBlue,
                onPressed: () {
                  onConfirm();
                  Navigator.pop(context);
                },
                title: submitButtonText ?? "ok".tr(),
                textColor: AppColors.redColor,
                bottomColor: AppColors.redColor,
              ),
              const SizedBox(height: 12),
              continueButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                title: cancelButtonText ?? "cancel".tr(),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      );
    },
  );
}

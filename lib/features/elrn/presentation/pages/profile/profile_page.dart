import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/widgets/loading_indicator.dart';
import 'package:elrn/features/elrn/domain/entities/auth_info/auth_info_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/personal_info/personal_info_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/personal_info/personal_info_state.dart';
import 'package:elrn/features/elrn/presentation/pages/certificate/certificate_courses_page.dart';
import 'package:elrn/features/elrn/presentation/pages/documents/document_courses_page.dart';
import 'package:elrn/features/elrn/presentation/pages/saved_lessons/saved_lessons_page.dart';
import 'package:elrn/features/elrn/presentation/widgets/app_bar.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:elrn/features/elrn/presentation/widgets/test_info_row.dart';
import 'package:elrn/features/elrn/presentation/widgets/toasts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../di.dart';
import '../../bloc/personal_info/personal_info_event.dart';
import '../../widgets/error_widget.dart';
import '../courses/courses_page.dart';
import '../courses/video_lesson/video_lesson_page.dart';
import '../home_page/home_page.dart';
import '../personal_info/personal_info_page.dart';
import '../results/results_page2.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _bloc = sl<PersonalInfoBloc>();

  @override
  void initState() {
    _bloc.add(PersonalInfoLoadEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CurvedAppBar(
            title: "my_profile".tr(),
            onBackPressed: () {
              homeBloc.add(0);
            },
          ),
          BlocProvider(
              create: (context) => _bloc,
              child: BlocBuilder<PersonalInfoBloc, PersonalInfoState>(builder: (context, state) {
                if (state is PersonalInfoLoadingState) {
                  return Expanded(child: loadingIndicator());
                }
                if (state is PersonalInfoLoadedState) {
                  return _loadedUI(state.authInfo);
                }
                if (state is PersonalInfoErrorState) {
                  return errorWidget(
                    onPressed: () {
                      _bloc.add(PersonalInfoLoadEvent());
                    },
                    text: state.message,
                  );
                }
                return errorWidget(
                    onPressed: () {
                      _bloc.add(PersonalInfoLoadEvent());
                    },
                    text: "something_went_wrong".tr());
              })),
        ],
      ),
    );
  }

  Widget _loadedUI(AuthInfoEntity authInfo) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBlue : AppColors.blueColor,
                  border: Border.all(color: AppColors.lightBlue),
                ),
                child: Image.asset(
                  "assets/images/elrn_logo.png",
                  width: 45,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                authInfo.fullName ?? "",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkBlue : AppColors.blueColor,
                  border: Border.all(
                    color: AppColors.lightBlue,
                  ),
                ),
                child: Column(
                  children: [
                    navigationRow(
                        title: "personal_info".tr(),
                        iconName: "user_edit.png",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInfoPage()));
                        }),
                    customDivider(height: 1),
                    navigationRow(
                        title: "activity".tr(),
                        iconName: "briefcase.png",
                        onTap: () {
                          showSimpleToast("coming_soon".tr());
                        }),

                    customDivider(height: 1),
                    navigationRow(
                        title: "my_courses".tr(),
                        iconName: "courses.png",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CoursesPage()));
                        }),
                    customDivider(height: 1),
                    navigationRow(
                        title: "certificates".tr(),
                        iconName: "certificate.png",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CertificateCoursesPage()));
                        }),
                    customDivider(height: 1),
                    navigationRow(
                        title: "results".tr(),
                        iconName: "award.png",
                        onTap: () {
                          // homeBloc.add(1);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage2()));
                        }),

                    if(authInfo.userName!="IHM581641171")
                      customDivider(height: 1),
                    if(authInfo.userName!="IHM581641171")
                    navigationRow(
                        title: "documents".tr(),
                        iconName: "document.png",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DocumentCoursesPage()));
                        }),


                    customDivider(height: 1),
                    navigationRow(
                        title: "saved_lessons".tr(),
                        iconName: "heart.png",
                        onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => SavedLessonsPage()));
                        }),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),

            ],
          ),
        ),
      ),
    );
  }
}

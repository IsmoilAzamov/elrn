import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/utils/get_logo.dart';
import 'package:elrn/features/elrn/domain/entities/auth_info/auth_info_entity.dart';
import 'package:elrn/features/elrn/domain/entities/program/program_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/main/main_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/main/main_state.dart';
import 'package:elrn/features/elrn/presentation/pages/courses/modules/modules_page.dart';
import 'package:elrn/features/elrn/presentation/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/widgets/loading_indicator.dart';
import '../../../../../di.dart';
import '../../../../../main.dart';
import '../../bloc/main/main_bloc.dart';
import '../../bloc/theme/theme_bloc.dart';
import '../../widgets/toasts.dart';
import '../courses/courses_page.dart';
import '../personal_info/personal_info_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final themeBloc = BlocProvider.of<ThemeBloc>(navigatorKey.currentContext!);
  DateTime oldTime = DateTime.now();
  DateTime newTime = DateTime.now();
  DateTime? currentBackPressTime;

  final CarouselSliderController _carouselController = CarouselSliderController();

  final _bloc = sl<MainBloc>();
  int _currentIndex = 0; // Add this to track the current carousel index

  @override
  void initState() {
    _bloc.add(MainLoadEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => _bloc,
        child: BlocBuilder<MainBloc, MainState>(builder: (context, state) {
          if (state is MainLoadingState) {
            return loadingIndicator();
          }
          if (state is MainLoadedState) {
            return _loadedUI(state);
          }
          if (state is MainErrorState) {
            return errorWidget(
              onPressed: () {
                _bloc.add(MainLoadEvent());
              },
              text: state.message,
            );
          }
          return errorWidget(
            onPressed: () {
              _bloc.add(MainLoadEvent());
            },
            text: "something_went_wrong".tr(),
          );
        }));
  }

  Widget _loadedUI(MainLoadedState state) {
    bool isDark = box.get('theme') == "dark";

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CustomAppBar(title: "main_page".tr(),
          // onBackPressed:  onWillPop,
          //   isBac
          //  kButtonVisible: false,
          // ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      getLogo(),
                      width: 32,
                      height: 32,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                        state.authInfo.fullName ?? "",
                        maxLines: 1,
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        showSimpleToast("no_notification".tr());
                       showBeautifulToast(context, "no_notification".tr());
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const LogoutPage()));
                      },
                      child: Image.asset(
                        width: 20,
                        'assets/icons/bell.png',
                        color: isDark? Colors.white: AppColors.blueColor,
                      )),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    "edu_courses".tr(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  CoursesPage(courses: state.programs)));
                },
                child: Container(

                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1.2, color: isDark ?Colors.white : AppColors.blueColor)),
                  ),
                  child: Text(
                    "all_courses".tr(),
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, fontFamily: GoogleFonts.poppins().fontFamily),

                  ),
                ),
              ),
            ],
          ),


          carouselSlider(programs: state.programs),

          const SizedBox(
            height: 10,
          ),
          dotsIndicator(state.programs),
          const SizedBox(
            height: 20,
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text("sections".tr(),
                textAlign: TextAlign.start,

                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
          ),


          sectionWidgets(state.authInfo, state.programs),
          // sectionWidgets(),
          // sectionWidgets(),

          const SizedBox(
            height: 40,
          ),

          ElevatedButton(
            onPressed: () {
              if (themeBloc.state is LightTheme) {
                themeBloc.add(ToggleDark());
              } else {
                themeBloc.add(ToggleLight());
              }

              // setState(() {});
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(pageIndex: 0)));
            },
            child: Text("change_theme".tr()),
          ),

        ],
      ),
    );
  }

  Widget dotsIndicator(List<ProgramEntity> programs) {
    bool isDark = box.get('theme') == "dark";

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      width: double.infinity,
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              programs.length,

              (index) {
                bool isSelected = _currentIndex == index;
                return GestureDetector(
                  onTap: () {
                    _carouselController.animateToPage(index);
                  },
                  child: AnimatedContainer(
                    width: isSelected ? 36 : 12,
                    height: 7,
                    margin: EdgeInsets.symmetric(horizontal: isSelected ? 6 : 3),
                    decoration: BoxDecoration(
                      color: isDark ? (isSelected ? AppColors.blueColor : Colors.grey.shade400) : (isSelected ? AppColors.blueColor : AppColors.lightBlue.withOpacity(0.6)),
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget carouselSlider({required List<ProgramEntity> programs}) {
    return Flexible(
      child: CarouselSlider(
        carouselController: _carouselController,
        options: CarouselOptions(
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          viewportFraction: 0.9,
          enlargeFactor: 0.2,
          aspectRatio: 2.5,
          onPageChanged: (index, reason) {
            setState(() {
              _currentIndex = index;
              // Ensure the PageController is attached before calling animateToPage
            });
          },
        ),
        items: programs.map((item) => programCard(item)).toList(),
      ),
    );
  }

  Widget programCard(ProgramEntity item) {
    bool isDark = box.get('theme') == "dark";

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  ModulesPage(programId: item.id??"", title: item.title??"",)));

      },
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.all(0),
        child: Container(
          padding: const EdgeInsets.all(12),
          constraints: const BoxConstraints.expand(),
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
                    width: 55,
                    height: 55,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: isDark ? AppColors.blueColor : Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/edu.png',
                      width: 32,
                      height: 32,
                    ),
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

                    children: [
                      Image.asset(
                        'assets/icons/hourglass.png',
                        width: 12,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Text(
                          "${"duration".tr()}: ${getCourseDuration(item.totalVideosCount ?? 0)}",
                          maxLines: 1,
                          overflow: TextOverflow.visible,

                          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                      "${"lesson_count".tr()}: ${getCourseDuration(item.courseTopicChildCount ?? 0)}",
                      maxLines: 1,
                      overflow: TextOverflow.visible,
                      style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white),
                    ),
                  ),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null || now.difference(currentBackPressTime!) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      showSimpleToast(
        'double_tap_to_exit'.tr(),
      );
      return Future.value(false);
    }
    return Future.value(true);
  }


  Widget sectionWidgets(AuthInfoEntity authInfo,List<ProgramEntity> courses) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              sectionItem(icon: "personal_info.png", title: "personal_info".tr(),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  PersonalInfoPage(authInfo:authInfo)));
              }
              ),
              sectionItem(icon: "courses.png", title: "my_courses".tr(),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  CoursesPage(courses: courses)));
              }
              ),

              sectionItem(icon: "key.png", title: "key_point".tr()),
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              sectionItem(icon: "certificate.png", title: "certificates".tr()),
              sectionItem(icon: "document.png", title: "documents".tr()),
              sectionItem(icon: "settings.png", title: "settings".tr()),
            ],
          ),
        ],

      ),
    );
  }

  Widget sectionItem({required String icon, required String title, VoidCallback? onPressed}) {
    bool isDark = box.get('theme') == "dark";

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width / 3 - 20,
        height: MediaQuery.of(context).size.width / 3-20,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isDark? AppColors.blueColor: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          border: Border.all(
            color: isDark? AppColors.lightBlue: AppColors.blueColor,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/$icon",
              width: 40,
              height: 40,
              color: isDark? Colors.white: AppColors.blueColor,
            ),
            const SizedBox(height: 8,),
            Text(title,
              textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}

String getCourseDuration(int videosCount) {
  if (videosCount > 12) {
    return "${(videosCount / 12).ceil()} ${'months'.tr()}";
  }
  return "$videosCount ${"days".tr()}";
}

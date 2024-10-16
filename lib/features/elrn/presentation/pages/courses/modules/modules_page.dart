import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/entities/program/program_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/modules_bloc.dart';
import 'package:elrn/features/elrn/presentation/pages/courses/modules/topics/topics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/widgets/loading_indicator.dart';
import '../../../../../../di.dart';
import '../../../bloc/modules/modules_event.dart';
import '../../../bloc/modules/modules_state.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/error_widget.dart';
import '../../../widgets/module_item.dart';
import '../../../widgets/my_scaffold.dart';

class ModulesPage extends StatefulWidget {
  final String programId;
  final String title;

  const ModulesPage({super.key, required this.programId, required this.title});

  @override
  State<ModulesPage> createState() => _ModulesPageState();
}

class _ModulesPageState extends State<ModulesPage> {
  final _bloc = sl<ModulesBloc>();

  @override
  void initState() {
    _bloc.add(ModulesLoadEvent(programId: widget.programId));
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
            title: widget.title,
            onBackPressed: () {
              Navigator.pop(context);
            },
            actions: [
              IconButton(
                onPressed: () {
                  // _bloc.add(ModulesLoadEvent(programId: widget.programId));
                },
                icon: const Icon(Icons.more_vert_outlined),
              ),
            ],
          ),
          BlocProvider(
              create: (context) => _bloc,
              child: BlocBuilder<ModulesBloc, ModulesState>(builder: (context, state) {
                if (state is ModulesLoadingState) {
                  return Expanded(child: Center(child: loadingIndicator()));
                }
                if (state is ModulesErrorState) {
                  return errorWidget(
                    onPressed: () {
                      _bloc.add(ModulesLoadEvent(programId: widget.programId));
                    },
                    text: state.message,
                  );
                }
                if (state is ModulesLoadedState) {
                  return _loadedUI(state.courses);
                }

                return errorWidget(onPressed: () {}, text: 'something_went_wrong'.tr());
              })),
        ],
      ),
    );
  }

  Widget _loadedUI(List<CourseEntity> courses) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                "modules".tr(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                ),
                textAlign: TextAlign.left,
              ),
              Column(
                children: List.generate(
                  courses.length,
                  (index) => GestureDetector(
                    onTap: () {
                      if (courses[index].canStart == false) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TopicsPage(
                                      courseId: (courses[index].id ?? ""),
                                      title: "${getRomanNumber(index + 1)}. ${courses[index].title ?? ""}",
                                    )));
                      }
                    },
                    child: ModuleItem(
                      index: index + 1,
                      item: courses[index],
                    ),
                  ),
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

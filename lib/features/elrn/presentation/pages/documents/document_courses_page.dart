import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/presentation/bloc/programs/programs_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/programs/programs_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/loading_indicator.dart';
import '../../../../../di.dart';
import '../../../domain/entities/program/program_entity.dart';
import '../../bloc/programs/programs_state.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/my_scaffold.dart';
import '../../widgets/program_item.dart';
import 'documents_page.dart';

class DocumentCoursesPage extends StatefulWidget {
  const DocumentCoursesPage({super.key});

  @override
  State<DocumentCoursesPage> createState() => _DocumentCoursesPageState();
}

class _DocumentCoursesPageState extends State<DocumentCoursesPage> {
  final _bloc = sl<ProgramsBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(ProgramsLoadEvent());
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CurvedAppBar(
            title: "select_course".tr(),
            onBackPressed: () {
              Navigator.pop(context);
            },
          ),
          BlocBuilder<ProgramsBloc, ProgramsState>(
            bloc: _bloc,
            builder: (context, state) {
              if (state is ProgramsLoadingState) {
                return loadingIndicator();
              }
              if (state is ProgramsErrorState) {
                return errorWidget(
                  onPressed: () {
                    _bloc.add(ProgramsLoadEvent());
                  },
                  text: state.message,
                );
              }
              if (state is ProgramsLoadedState) {
                return _loadedUI(state.programs);
              }
              return errorWidget(text: 'something_went_wrong'.tr(), onPressed: () {
                _bloc.add(ProgramsLoadEvent());
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _loadedUI(List<dynamic> courses) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              courses.length,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DocumentsPage(programId: courses[index].id ?? "")));
                },
                child: ProgramItem(
                  item: courses[index],
                  showProgress: false,
                ),
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}

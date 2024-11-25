import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/widgets/loading_indicator.dart';
import 'package:elrn/features/elrn/domain/entities/program/program_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/programs/programs_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../di.dart';
import '../../bloc/programs/programs_event.dart';
import '../../bloc/programs/programs_state.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/my_scaffold.dart';
import '../../widgets/program_item.dart';
import 'modules/modules_page.dart';

class CoursesPage extends StatefulWidget {

  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final _bloc = sl<ProgramsBloc>();

  @override
  void initState() {
    _bloc.add(ProgramsLoadEvent());
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
            title: "my_courses".tr(),
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
    return      Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(

            children: List.generate(

              courses.length,
                  (index) => GestureDetector(

                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  ModulesPage(programId: courses[index].id??"", title: courses[index].title??"",)));
                },
                child: ProgramItem(
                  item: courses[index],
                ),
              ),
            )
                .toList(),
          ),
        ),
      ),
    );
  }
}

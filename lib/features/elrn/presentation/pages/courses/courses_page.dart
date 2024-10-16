import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/entities/program/program_entity.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/my_scaffold.dart';
import '../../widgets/program_item.dart';
import 'modules/modules_page.dart';

class CoursesPage extends StatelessWidget {
  final List<ProgramEntity> courses;

  const CoursesPage({super.key, required this.courses});

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

          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
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
          )
        ],
      ),
    );
  }
}

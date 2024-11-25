


import 'package:elrn/features/elrn/domain/entities/program/program_entity.dart';

import '../../../../../main.dart';

class ProgramsDBService {
  final List<dynamic> _programs = box.get('programs', defaultValue: <ProgramEntity>[]);

  Future<void> putPrograms(List<ProgramEntity> programs) async {
    _programs.clear();
    _programs.addAll(programs);
    await box.put('programs', _programs);
  }


  Future<List<dynamic>> getPrograms() async {
    return _programs;
  }


  Future<void> deletePrograms() async {
    _programs.clear();
    await box.put('programs', _programs);
  }

  Future<int> getProgramsCount() async {
    return _programs.length;
  }

  Future<void> deleteProgramById(int id) async {
    _programs.removeWhere((element) => element.id == id);
    await box.put('programs', _programs);
  }
}


import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/repositories/my_course_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/datastate.dart';
import '../../../domain/repositories/my_lesson_repository.dart';
import 'documents_event.dart';
import 'documents_state.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  final MyCourseRepository _myCourseRepository;

  DocumentsBloc( this._myCourseRepository) : super(DocumentsLoadingState()) {
    {
      on<DocumentsLoadEvent>(_load);
    }
  }

  _load(DocumentsLoadEvent event, Emitter<DocumentsState> emit) async {
    emit(DocumentsLoadingState());
    final result = await _myCourseRepository.getMyReferences(programId: event.programId);
    if (result is DataSuccess && result.data != null) {

      emit(DocumentsLoadedState(result.data!));
      return;
    } else if (result is DataError) {
      emit(DocumentsErrorState(result.error?.message ?? "something_went_wrong".tr()));
      return;
    }
    emit(DocumentsErrorState("something_went_wrong".tr()));
  }
}

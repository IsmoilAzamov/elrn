

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/resources/datastate.dart';
import '../../../domain/repositories/my_lesson_repository.dart';
import 'certificates_event.dart';
import 'certificates_state.dart';

class CertificatesBloc extends Bloc<CertificatesEvent, CertificatesState> {
  final MyLessonRepository _myLessonRepository;

  CertificatesBloc( this._myLessonRepository) : super(CertificatesLoadingState()) {
    {
      on<CertificatesLoadEvent>(_load);
    }
  }

  _load(CertificatesLoadEvent event, Emitter<CertificatesState> emit) async {
    emit(CertificatesLoadingState());
    final result = await _myLessonRepository.getMyCertificates(programId: event.programId);
    if (result is DataSuccess && result.data != null) {

      emit(CertificatesLoadedState(result.data!));
      return;
    } else if (result is DataError) {
      emit(CertificatesErrorState(result.error?.message ?? "something_went_wrong".tr()));
      return;
    }
    emit(CertificatesErrorState("something_went_wrong".tr()));
  }
}

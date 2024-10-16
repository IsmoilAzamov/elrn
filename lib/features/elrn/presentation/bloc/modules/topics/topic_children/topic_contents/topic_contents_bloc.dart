import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/resources/datastate.dart';
import 'package:elrn/features/elrn/domain/repositories/my_lesson_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topic_children/topic_contents/topic_contents_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topic_children/topic_contents/topic_contents_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TopicContentsBloc extends Bloc<TopicContentsEvent, TopicContentsState> {
  final MyLessonRepository _myLessonRepository;

  TopicContentsBloc( this._myLessonRepository) : super(TopicContentsLoadingState()) {
    {
      on<TopicContentsLoadEvent>(_load);
    }
  }

  _load(TopicContentsLoadEvent event, Emitter<TopicContentsState> emit) async {
    emit(TopicContentsLoadingState());
    final result = await _myLessonRepository.getContentByCourseTopic(topicId: event.topicId);
    if (result is DataSuccess && result.data != null) {

      emit(TopicContentsLoadedState(result.data!));
      return;
    } else if (result is DataError) {
      emit(TopicContentsErrorState(result.error?.message ?? "something_went_wrong".tr()));
      return;
    }
    emit(TopicContentsErrorState("something_went_wrong".tr()));
  }
}

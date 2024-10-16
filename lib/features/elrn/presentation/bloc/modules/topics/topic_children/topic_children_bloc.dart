import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/resources/datastate.dart';
import 'package:elrn/features/elrn/domain/repositories/my_lesson_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topic_children/topic_children_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/modules/topics/topic_children/topic_children_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TopicChildrenBloc extends Bloc<TopicChildrenEvent, TopicChildrenState> {
  final MyLessonRepository _myLessonRepository;

  TopicChildrenBloc( this._myLessonRepository) : super(TopicChildrenLoadingState()) {
    {
      on<TopicChildrenLoadEvent>(_load);
    }
  }

  _load(TopicChildrenLoadEvent event, Emitter<TopicChildrenState> emit) async {
    emit(TopicChildrenLoadingState());
    final result = await _myLessonRepository.getByCourseTopicParent(parentId: event.parentId);
    if (result is DataSuccess && result.data != null) {

      emit(TopicChildrenLoadedState(result.data!));
      return;
    } else if (result is DataError) {
      emit(TopicChildrenErrorState(result.error?.message ?? "something_went_wrong".tr()));
      return;
    }
    emit(TopicChildrenErrorState("something_went_wrong".tr()));
  }
}

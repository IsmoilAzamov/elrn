

import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/resources/datastate.dart';
import 'package:elrn/features/elrn/domain/repositories/my_comment_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'comments_event.dart';
import 'comments_state.dart';
export 'comments_event.dart';
export 'comments_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final MyCommentRepository repository;

  CommentsBloc(this.repository) : super(CommentsLoadingState()) {
    on<CommentsLoadEvent>((event, emit) async {
      emit(CommentsLoadingState());
      try {
        final result = await repository.get(dto: {
          "documentId": event.documentId});
       if(result is DataError){
         emit(CommentsErrorState(result.error?.error.toString()??"something_went_wrong".tr()));
         return;
       }
        emit(CommentsLoadedState(result.data??[]));
       return;
      } catch (e) {
        emit(CommentsErrorState(e.toString()));
      }
    });
    on<CommentsCreateEvent>((event, emit) async {
      // emit(CommentsLoadingState());
      try {
        final result = await repository.create(dto:event.dto);
        if(result is DataError){
          emit(CommentsErrorState(result.error?.error.toString()??"something_went_wrong".tr()));
          return;
        }
        try {
          final result = await repository.get(dto: {
            "documentId": event.documentId});

          if(result is DataError){
            emit(CommentsErrorState(result.error?.error.toString()??"something_went_wrong".tr()));
            return;
          }
          emit(CommentsLoadedState(result.data??[]));
          return;
        } catch (e) {
          emit(CommentsErrorState(e.toString()));
        }
        return;
      } catch (e) {
        emit(CommentsErrorState(e.toString()));
      }
    });
  }
}
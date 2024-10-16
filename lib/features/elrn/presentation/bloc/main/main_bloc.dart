import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/repositories/account_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/my_program_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/main/main_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/main/main_state.dart';
import 'package:elrn/features/elrn/presentation/widgets/toasts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources/datastate.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final AccountRepository _accountRepository;
  final MyProgramRepository _myProgramRepository;

  MainBloc(this._accountRepository, this._myProgramRepository) : super(MainLoadingState()) {
    {
      on<MainLoadEvent>(_load);
    }
  }

  _load(MainLoadEvent event, Emitter<MainState> emit) async {
    emit(MainLoadingState());
    final result = await _accountRepository.getAuthInfo();
    final result2 = await _myProgramRepository.getPrograms();
    if (result is DataSuccess && result.data != null) {
      if(result2 is DataError && result2.data == null) {
        showErrorToast(result2.error?.error.toString() ?? "something_went_wrong".tr());
        emit(MainLoadedState(result.data!, []));
        return;
      }
      emit(MainLoadedState(result.data!, result2.data?? []));
      return;
    } else if (result is DataError) {
      emit(MainErrorState(result.error?.message ?? "something_went_wrong".tr()));
      return;
    }
    emit(MainErrorState("something_went_wrong".tr()));
  }
}

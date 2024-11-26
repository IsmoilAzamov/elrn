import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/data/datasources/local/personal_info_db_service.dart';
import 'package:elrn/features/elrn/data/datasources/local/prograam_db_service.dart';
import 'package:elrn/features/elrn/domain/repositories/account_repository.dart';
import 'package:elrn/features/elrn/domain/repositories/my_program_repository.dart';
import 'package:elrn/features/elrn/presentation/bloc/main/main_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/main/main_state.dart';
import 'package:elrn/features/elrn/presentation/widgets/toasts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources/datastate.dart';
import '../../../../../core/widgets/update_dialog.dart';
import '../../../../../main.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final AccountRepository _accountRepository;
  final MyProgramRepository _myProgramRepository;
  final ProgramsDBService _programsDBService;
  final AuthInfoDBService _authInfoDBService;

  MainBloc(this._accountRepository, this._myProgramRepository, this._programsDBService, this._authInfoDBService)
      : super(MainLoadingState()) {
    on<MainLoadEvent>(_load);
  }

  Future<void> _load(MainLoadEvent event, Emitter<MainState> emit) async {
    emit(MainLoadingState());


    // Fetch authentication info
    final authResult = await _accountRepository.getAuthInfo();
    if (authResult is DataError) {
      emit(MainErrorState(authResult.error?.message ?? "something_went_wrong".tr()));
      return;
    }
     _authInfoDBService.putAuthInfo(authResult.data!);

    // Fetch programs
    final programResult = await _myProgramRepository.getPrograms();
    if (programResult is DataError) {
      showErrorToast(programResult.error?.error.toString() ?? "something_went_wrong".tr());
      // Emit loaded state with empty program list if there was an error fetching programs
      emit(MainLoadedState(authResult.data!, []));
      return;
    }

    // Save programs to the database
    _programsDBService.putPrograms(programResult.data ?? []);

    // Emit the final loaded state with both auth info and programs
    emit(MainLoadedState(authResult.data!, programResult.data ?? []));
  }
}
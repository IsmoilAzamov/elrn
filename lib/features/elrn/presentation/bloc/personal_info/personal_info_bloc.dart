import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/data/datasources/local/personal_info_db_service.dart';
import 'package:elrn/features/elrn/presentation/bloc/personal_info/personal_info_event.dart';
import 'package:elrn/features/elrn/presentation/bloc/personal_info/personal_info_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalInfoBloc extends Bloc<PersonalInfoEvent, PersonalInfoState> {
  final AuthInfoDBService _authInfoDBService;

  PersonalInfoBloc(this._authInfoDBService) : super(PersonalInfoLoadingState()) {
    {
      on<PersonalInfoLoadEvent>(_load);
    }
  }

  _load(PersonalInfoLoadEvent event, Emitter<PersonalInfoState> emit) async {
    emit(PersonalInfoLoadingState());
   try{
     var result = await _authInfoDBService.getAuthInfo();
     emit(PersonalInfoLoadedState(result));
   }catch(e){
     emit(PersonalInfoErrorState("something_went_wrong".tr()));
   }
  }
}

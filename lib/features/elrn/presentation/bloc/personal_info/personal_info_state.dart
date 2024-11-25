
import '../../../domain/entities/auth_info/auth_info_entity.dart';

sealed class PersonalInfoState{}

class PersonalInfoInitialState extends PersonalInfoState{}

class PersonalInfoLoadingState extends PersonalInfoState{}

class PersonalInfoLoadedState extends PersonalInfoState{
  final AuthInfoEntity authInfo;

  PersonalInfoLoadedState(this.authInfo);
}

class PersonalInfoErrorState extends PersonalInfoState{
  final String message;

  PersonalInfoErrorState(this.message);
}
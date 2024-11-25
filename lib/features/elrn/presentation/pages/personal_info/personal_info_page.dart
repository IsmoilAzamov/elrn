import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/core/widgets/loading_indicator.dart';
import 'package:elrn/features/elrn/domain/entities/auth_info/auth_info_entity.dart';
import 'package:elrn/features/elrn/presentation/bloc/personal_info/personal_info_bloc.dart';
import 'package:elrn/features/elrn/presentation/bloc/personal_info/personal_info_state.dart';
import 'package:elrn/features/elrn/presentation/widgets/app_bar.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../di.dart';
import '../../bloc/personal_info/personal_info_event.dart';
import '../../widgets/error_widget.dart';
import '../../widgets/info_item.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key});

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}


class _PersonalInfoPageState extends State<PersonalInfoPage> {
  final _bloc = sl<PersonalInfoBloc>();

  @override
  void initState() {
    _bloc.add(PersonalInfoLoadEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CurvedAppBar(
            title: "personal_info".tr(),
            onBackPressed: () {
              Navigator.pop(context);
            },
          ),
          BlocProvider(
              create: (context) => _bloc,
              child: BlocBuilder<PersonalInfoBloc, PersonalInfoState>(builder: (context, state) {
                if (state is PersonalInfoLoadingState) {
                  return Expanded(child: loadingIndicator());
                }
                if (state is PersonalInfoLoadedState) {
                  return _loadedUI(state.authInfo);
                }
                if (state is PersonalInfoErrorState) {
                  return errorWidget(
                    onPressed: () {
                      _bloc.add(PersonalInfoLoadEvent());
                    },
                    text: state.message,
                  );
                }
                return errorWidget(
                    onPressed: () {
                      _bloc.add(PersonalInfoLoadEvent());
                    },
                    text: "something_went_wrong".tr());
              })),
        ],
      ),
    );
  }
  Widget _loadedUI(AuthInfoEntity authInfo) {
    return  Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              infoItem(title: "name".tr(), value: authInfo.firstName ?? ""),
              infoItem(title: "surname".tr(), value: authInfo.lastName ?? ""),
              //middleName
              infoItem(title: "middle_name".tr(), value: authInfo.middleName ?? ""),
              //birthDate
              infoItem(title: "birth_date".tr(), value: authInfo.birthDate ?? ""),
              //birthPlace
              infoItem(title: "birth_place".tr(), value: authInfo.birthRegion ?? ""),
              //gender
              //livingPlace
              infoItem(title: "living_address".tr(), value: authInfo.livingRegion ?? ""),
              //docSeria
              infoItem(title: "passport_seria".tr(), value: authInfo.passportSeria ?? ""),
              const SizedBox(
                height: 32,
              ),

              Text(
                "personal_info_text".tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              )
            ],
          ),
        ),
      ),
    );
  }

}

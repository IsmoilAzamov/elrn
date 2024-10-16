import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/domain/entities/auth_info/auth_info_entity.dart';
import 'package:elrn/features/elrn/presentation/widgets/app_bar.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

import '../../widgets/info_item.dart';

class PersonalInfoPage extends StatelessWidget {
  final AuthInfoEntity authInfo;

  const PersonalInfoPage({super.key, required this.authInfo});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CurvedAppBar(
                title: "personal_info".tr(),
                onBackPressed: () {
                  Navigator.pop(context);
                },
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

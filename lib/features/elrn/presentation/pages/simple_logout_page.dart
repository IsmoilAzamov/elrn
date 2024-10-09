import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../data/datasources/local/token_db_service.dart';


class LogoutPage extends StatefulWidget {
  const LogoutPage({super.key});

  @override
  State<LogoutPage> createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await TokenService.deleteToken();
          if(context.mounted)  Navigator.pushNamedAndRemoveUntil(context, '/start', (route) => false);
          },
          child:  Text('logout'.tr()),
        ),
      ),
    );
  }
}

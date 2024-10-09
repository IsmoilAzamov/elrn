import 'package:easy_localization/easy_localization.dart';
import 'package:elrn/features/elrn/presentation/widgets/continue_button.dart';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/get_logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscure = true;
  final _usernameFormKey = GlobalKey<FormState>();
  final _passwordFormKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MyScaffold(
          body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      getLogo(),
                      width: 55,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "IJTIMOIY HIMOYA TIZIMI \nXODIMLARINING MALAKASINI \nOSHIRISH MARKAZI",
                      maxLines: 3,
                      style: Theme.of(context).textTheme.labelSmall,
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "login".tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  'welcome'.tr(),
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 24),
                Form(
                  key: _usernameFormKey,
                  child: TextFormField(
                    controller: _usernameController,
                    textAlignVertical: TextAlignVertical.center,
                    style: Theme.of(context).textTheme.labelLarge,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'input_username'.tr();
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: Theme.of(context).inputDecorationTheme.border,
                      focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
                      enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
                      filled: true,
                      hintText: 'input_username'.tr(),
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      fillColor: Theme.of(context).primaryColor,
                      prefixIcon: Icon(
                        Icons.person_outline,
                        size: 20,
                        color: Theme.of(context).inputDecorationTheme.hintStyle?.color,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Form(
                  key: _passwordFormKey,
                  child: TextFormField(
                    controller: _passwordController,
                    textAlignVertical: TextAlignVertical.center,
                    style: Theme.of(context).textTheme.labelLarge,
                    obscureText: isObscure,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'input_password'.tr();
                      }
                      return null;
                    },

                    decoration: InputDecoration(

                      border: Theme.of(context).inputDecorationTheme.border,
                      focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
                      enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,

                      filled: true,
                      hintText: 'input_password'.tr(),
                      hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      fillColor: Theme.of(context).primaryColor,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        size: 20,
                        color: Theme.of(context).inputDecorationTheme.hintStyle?.color,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                          size: 20,
                          color: Theme.of(context).inputDecorationTheme.hintStyle?.color,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            continueButton(onPressed: () {}, title: 'login'.tr()),
          ],
        ),
      )),
    );
  }
}

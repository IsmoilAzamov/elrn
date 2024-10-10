import 'dart:async';
import 'package:elrn/features/elrn/presentation/widgets/my_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'home_page.dart';

class NetworkAwareApp extends StatefulWidget {
  const NetworkAwareApp({super.key});

  @override
  State<NetworkAwareApp> createState() => _NetworkAwareAppState();
}

class _NetworkAwareAppState extends State<NetworkAwareApp> {
  late StreamSubscription<InternetConnectionStatus> _subscription;
  bool _isConnected = true;

  @override
  void initState() {
    super.initState();

    // Check initial connection status
    _checkInitialConnection();

    // Listen for connectivity changes
    _subscription = InternetConnectionChecker().onStatusChange.listen((status) {
      setState(() {
        _isConnected = status == InternetConnectionStatus.connected;
      });
    });
  }

  Future<void> _checkInitialConnection() async {
    _isConnected = await InternetConnectionChecker().hasConnection;
    setState(() {});
  }


  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isConnected ? HomePage(initialLogin: true, pageIndex: 0,) : Scaffold(
        body: ErrorWidget(),
    );
  }
}


class ErrorWidget extends StatelessWidget {
  const ErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/no_internet.png', width: 200, height: 200),
              SizedBox(height: 20),
              Text('No Internet Connection'),
            ],
          ),
        ),
      ),
    );
  }
}


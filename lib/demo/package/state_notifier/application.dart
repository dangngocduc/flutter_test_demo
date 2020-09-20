import 'package:flutter/material.dart';
import 'package:flutter_start/demo/package/state_notifier/state_notifier_page.dart';
import 'dart:developer' as developer;

import 'package:provider/provider.dart';

class Application extends StatelessWidget {
  static const ROUTE_NAME = 'Application';
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ],
      child: MaterialApp(
        home: StateNotifierPage(),
      ),
    );
  }
}

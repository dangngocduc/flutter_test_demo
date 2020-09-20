import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'item_keep_alive_widget.dart';
import 'item_note_keep_alive_widget.dart';

class KeepAliveTestPage extends StatefulWidget {
  static const ROUTE_NAME = 'KeepAliveTestPage';
  @override
  _KeepAliveTestPageState createState() => _KeepAliveTestPageState();
}

class _KeepAliveTestPageState extends State<KeepAliveTestPage> {
  static const TAG = 'KeepAliveTestPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ItemKeepAliveWidget();
          },
        itemCount: 10,
      ),
    );
  }
}

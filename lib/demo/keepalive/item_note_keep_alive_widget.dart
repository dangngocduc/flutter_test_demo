import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class ItemNotKeepAliveWidget extends StatefulWidget {
  static const ROUTE_NAME = 'ItemKeepAliveWidget';
  @override
  _ItemNoteKeepAliveWidgetState createState() => _ItemNoteKeepAliveWidgetState();
}

class _ItemNoteKeepAliveWidgetState extends State<ItemNotKeepAliveWidget>  {
  static const TAG = 'ItemKeepAliveWidget';
  @override
  Widget build(BuildContext context) {
    developer.log('build', name: TAG);
    return Container(
      height: 200,
      color: Colors.green,
    );
  }

}

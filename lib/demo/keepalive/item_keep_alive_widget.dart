import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class ItemKeepAliveWidget extends StatefulWidget {
  static const ROUTE_NAME = 'ItemKeepAliveWidget';
  @override
  _ItemKeepAliveWidgetState createState() => _ItemKeepAliveWidgetState();
}

class _ItemKeepAliveWidgetState extends State<ItemKeepAliveWidget>  with AutomaticKeepAliveClientMixin{
  static const TAG = 'ItemKeepAliveWidget';
  @override
  Widget build(BuildContext context) {
    super.build(context);
    developer.log('build', name: TAG);
    return Container(
      height: 200,
      color: Colors.green,
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

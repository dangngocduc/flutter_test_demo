import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_start/demo/listview/model_item.dart';

class ItemWidget extends StatefulWidget {
  final ModelItem model;
  final VoidCallback onTap;
  ItemWidget({Key key, this.model, this.onTap}) : super(key: key);

  static const ROUTE_NAME = 'ItemWidget';
  @override
  _ItemWidgetState createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> with AutomaticKeepAliveClientMixin {
  static const TAG = 'ItemWidget';
  @override
  Widget build(BuildContext context) {
    developer.log('build render for: ${widget.model.value}', name: TAG);
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16
        ),
        child: Text('Item ${widget.model.value}'),
      ),
      onTap: widget.onTap,
    );
  }

  @override
  bool get wantKeepAlive => true;
}

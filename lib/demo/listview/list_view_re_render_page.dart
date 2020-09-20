import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:flutter_start/demo/listview/model_item.dart';

import 'item_widget.dart';

class ListViewReRenderPage extends StatefulWidget {
  static const ROUTE_NAME = 'ListViewReRenderPage';
  @override
  _ListViewReRenderPageState createState() => _ListViewReRenderPageState();
}

class _ListViewReRenderPageState extends State<ListViewReRenderPage> {
  static const TAG = 'ListViewReRenderPage';

  List<ModelItem> datas = [
    ModelItem(1, 0),
    ModelItem(2, 0),
    ModelItem(3, 0),
    ModelItem(4, 0),
    ModelItem(5, 0),
    ModelItem(6, 0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Render'),
      ),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            key: Key(datas[index].key),
            model: datas[index],
            onTap: () {
              setState(() {
                datas[index] = ModelItem(datas[index].id, datas[index].value + 1);
              });
            },
          );
        },
      ),
    );
  }
}

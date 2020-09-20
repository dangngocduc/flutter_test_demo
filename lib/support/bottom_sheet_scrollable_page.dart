import 'package:flutter/material.dart';
import 'dart:developer' as developer;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomSheetScrollablePage(),
    );
  }
}

class BottomSheetScrollablePage extends StatefulWidget {
  static const ROUTE_NAME = 'BottomSheetScrollablePage';
  @override
  _BottomSheetScrollablePageState createState() => _BottomSheetScrollablePageState();
}

class _BottomSheetScrollablePageState extends State<BottomSheetScrollablePage> {
  static const TAG = 'BottomSheetScrollablePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          color: Colors.blue,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return BottomSheetWidget();
                },
            );
          },
          child: Text('Click Me'),
        ),
      ),
    );
  }
}

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16
        ).copyWith(
            bottom: 16 + MediaQuery.of(context).viewInsets.bottom
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Nhập tên sản phẩm và nhãn hiệu',
                  labelText: 'Tên Sản phẩm',
                  filled: true
              ),
            ),
            SizedBox(height: 16,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Giá Bán',
                  labelText: 'Giá Bán',
                  filled: true
              ),
            ),
            SizedBox(height: 16,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Giá Bán',
                  labelText: 'Giá Bán',
                  filled: true
              ),
            ),
            SizedBox(height: 16,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Giá Bán',
                  labelText: 'Giá Bán',
                  filled: true
              ),
            ),
            SizedBox(height: 16,),
            RaisedButton(
              onPressed: (){},
              child: Text('Xong'),
            ),
            Container(
              child: Text('Tiếp tục thêm sản phẩm mới'),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:developer' as developer;

class ModelItem {
  static const TAG = 'ModelItem';
  int id;

  int value;

  ModelItem(this.id, this.value);

  String get key => 'id$value-value$value';

}
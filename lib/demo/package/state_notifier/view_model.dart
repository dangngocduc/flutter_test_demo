import 'dart:developer' as developer;

import 'package:state_notifier/state_notifier.dart';

class ViewModel extends StateNotifier<int> {
  static const TAG = 'ViewModel';

  ViewModel(int state) : super(state);

}
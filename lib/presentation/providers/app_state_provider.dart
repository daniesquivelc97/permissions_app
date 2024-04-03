import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/* Resumed
Inactive
Paused
Detached */

final appStateProvider = StateProvider<AppLifecycleState>((ref) {
  return AppLifecycleState.resumed;
});

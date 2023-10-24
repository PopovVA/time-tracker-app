import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    runApp(const ProviderScope(child: MyApp()));
  }, ((error, stack) {
    //ToDo Implement crash report system
    log(error.toString());
  }));
}

import 'package:adaptative_demo/app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => AdaptativeApp(),
    ),
  );
}

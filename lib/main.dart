import 'package:application_2/home_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,orientation,deviceType) {
        return MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: HomeScreen(),
        );
      }
    );
  }
}

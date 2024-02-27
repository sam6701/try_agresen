import 'package:flutter/material.dart';
import 'package:tryagresen/try.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Trypage(), //HoverPage(valu: 0), //ReferalPage() //Homepage(),
        );
      },
    );
  }
}

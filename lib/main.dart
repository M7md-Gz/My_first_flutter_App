import 'package:app6/ItemDatels.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ///
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Homepage(),
          routes: {"home": (context) => Homepage(),
            "itemdatels":(context)=>Itemdatels()
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruit/views/home_view.dart';

//void main() => runApp(DevicePreview(
//    builder: (context) => MyApp(),
//));

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Directionality(textDirection: TextDirection.rtl, child: HomeView()),
    );
  }
}


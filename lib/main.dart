import 'package:flutter/material.dart';
import 'package:flutter_google_map/Screens/MapScreen.dart';
import 'package:provider/provider.dart';

import 'Provider/MapScreenProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [

      ChangeNotifierProvider(create: (_)=>MapScreenProvider()),
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MapScreen(),
    ),
    );

  }
}


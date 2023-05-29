import 'package:flutter/material.dart';
import 'package:homework3_viewmodel_pageview/main/main_view.dart';
import 'package:homework3_viewmodel_pageview/provider/page_provider.dart';
import 'package:homework3_viewmodel_pageview/provider/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: 
  [
    ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider()),
    ChangeNotifierProvider<PageProvider>(create: (_) => PageProvider()),
  ]
  , child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MainView(),
    );
  }
}
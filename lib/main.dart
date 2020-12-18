import 'package:flutter/material.dart';
import 'pages/index_page.dart';
import 'package:provider/provider.dart';
import 'datas/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyTheme())
      ],
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: context.watch<MyTheme>().primarySwatch,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            debugShowCheckedModeBanner: false,
            home: IndexPage(),
          );
        },
      ),
    );
  }
}
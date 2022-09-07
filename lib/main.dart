import 'package:flutter/material.dart';
import 'package:providers/Providers/AddItemProvider.dart';
import 'package:providers/Providers/CountProvider.dart';
import 'package:provider/provider.dart';
import 'package:providers/Providers/ExampleoneProvider.dart';
import 'package:providers/Providers/FavoriteProvider.dart';
import 'package:providers/Providers/increamentProvider.dart';
import 'package:providers/Screens/CollectionProject.dart';

import 'Providers/ThemeChangeProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => FavoriteItem()),
          ChangeNotifierProvider(create: (_) => ThemeChangeProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => IncrementProvider()),
          ChangeNotifierProvider(create: (_) => AddItemProvider())
        ],
        child: Builder(builder: ((context) {
          final themeChanger = Provider.of<ThemeChangeProvider>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
                primarySwatch: Colors.red, brightness: Brightness.light),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.brown,
                appBarTheme:
                    const AppBarTheme(backgroundColor: Colors.deepPurple)),
            home: const CollectionProject(),
          );
        })));
  }
}

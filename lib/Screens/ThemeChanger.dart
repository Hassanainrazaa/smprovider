import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Providers/ThemeChangeProvider.dart';

class ThemeChange extends StatefulWidget {
  const ThemeChange({Key? key}) : super(key: key);

  @override
  State<ThemeChange> createState() => _ThemeChangeState();
}

class _ThemeChangeState extends State<ThemeChange> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChangeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("ThemeChanger"),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              title: const Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.SetTheme),
          RadioListTile<ThemeMode>(
              title: const Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.SetTheme),
          RadioListTile<ThemeMode>(
              title: const Text("System Mode"),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.SetTheme)
        ],
      ),
    );
  }
}

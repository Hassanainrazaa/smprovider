import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Providers/CountProvider.dart';

class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(const Duration(seconds: 2), (timer) {
      print("update seconds");
      countProvider.SetCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    //print('build whole screen');
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("object");
    return Scaffold(
      body: Center(
        child: Consumer<CountProvider>(builder: (context, value, child) {
          print("Only this widget builds");
          return Text(
            value.count.toString(),
            style: const TextStyle(fontSize: 50),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          countProvider.SetCount();
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}

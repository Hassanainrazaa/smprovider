import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Providers/ExampleoneProvider.dart';

class ExampleOne extends StatefulWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  @override
  Widget build(BuildContext context) {
    final exampleOneProvider =
        Provider.of<ExampleOneProvider>(context, listen: false);
    print("Build");
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Consumer<ExampleOneProvider>(builder: (context, value, child) {
          return Slider(
              min: 0,
              max: 1,
              value: value.value,
              //value: exampleOneProvider.value,
              onChanged: (val) {
                value.SetValue(val);
              });
        }),
        Consumer<ExampleOneProvider>(builder: (context, value, child) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(value.value),
                  ),
                  child: const Center(
                    child: Text("Container 1"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(exampleOneProvider.value),
                  ),
                  child: const Center(
                    child: Text("Container 1"),
                  ),
                ),
              )
            ],
          );
        }),
      ]),
    );
  }
}

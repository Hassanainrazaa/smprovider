import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Providers/increamentProvider.dart';

class Increamental extends StatefulWidget {
  const Increamental({Key? key}) : super(key: key);

  @override
  State<Increamental> createState() => _IncreamentalState();
}

class _IncreamentalState extends State<Increamental> {
  @override
  Widget build(BuildContext context) {
    print("Build");
    //final IncreProvider = Provider.of<IncrementProvider>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).colorScheme.secondary),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer<IncrementProvider>(
                  builder: (context, value, child) {
                    return InkWell(
                        onTap: () {
                          value.DecCounter();
                          print("Display");
                        },
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 16,
                        ));
                  },
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white),
                    child: Consumer<IncrementProvider>(
                      builder: (context, value, child) {
                        //print("Display");
                        return Text(
                          "${value.GetCounter}",
                          style: const TextStyle(
                              color: Colors.black, fontSize: 16),
                        );
                      },
                    ),
                  ),
                ),
                Consumer<IncrementProvider>(
                  builder: (BuildContext context, value, child) {
                    return InkWell(
                        onTap: () {
                          value.IncCounter();
                          print("Display");
                        },
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 16,
                        ));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SetState extends StatefulWidget {
  const SetState({Key? key}) : super(key: key);
  @override
  State<SetState> createState() => _SetStateState();
}

class _SetStateState extends State<SetState> {
  int count = 0;
  final bool _value = false;

  @override
  void initState() {
    super.initState();
    //Timer.periodic(const Duration(seconds: 1), (timer) {
    //count++;
    print(count);
    //setState(() {});
    //});
  }

  @override
  Widget build(BuildContext context) {
    print("building a screen");
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
              SizedBox(
                height: 50,
              ),

              Text(
                "02 : 36 PM",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),

              Text(
                "current time",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),

              SizedBox(
                height: 20,
              )
              //Text("${DateTime.now().hour} ${DateTime.now().minute}")
            ]),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DropDownText extends StatefulWidget {
  const DropDownText({Key? key}) : super(key: key);

  @override
  State<DropDownText> createState() => _DropDownTextState();
}

class _DropDownTextState extends State<DropDownText> {
  var itemslist = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  String? selectedval;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(31, 131, 120, 120),
                borderRadius: BorderRadius.circular(15)),
            margin: const EdgeInsets.only(top: 35),
            width: 900,
            height: 50,
            child: Row(
              children: [
                SizedBox(
                    width: 290,
                    child: TextFormField(
                        maxLines: 1,
                        //minLines: 10,
                        style: const TextStyle(
                          fontSize: 18,
                          //color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            //enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            //border: InputBorder.none,
                            fillColor: Colors.black12,
                            filled: false,
                            hintText: "Enter new Text",
                            contentPadding: EdgeInsets.all(15),
                            //prefixIcon: const Icon(Icons.email),
                            //icon: const Icon(Icons.man_rounded),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                  color: Colors.black12,
                                  width: 1.0,
                                ))))),
                SizedBox(
                  width: 70,
                  //padding: const EdgeInsets.only(left: 100),
                  child: DropdownButtonFormField(
                    value: selectedval ?? itemslist[0],
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedval = newValue;
                      });
                    },
                    items: itemslist
                        .map<DropdownMenuItem<String>>(
                            (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ))
                        .toList(),
                    decoration: InputDecoration(
                        enabled: false,
                        errorBorder: InputBorder.none,
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(0),
                                bottomLeft: Radius.circular(0))),
                        suffix: DropdownButtonFormField(
                          itemHeight: 50,
                          value: selectedval ?? itemslist[0],
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedval = newValue;
                            });
                          },
                          items: itemslist
                              .map<DropdownMenuItem<String>>(
                                  (item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ))
                              .toList(),
                          icon: const Icon(Icons.arrow_drop_down),
                        ),
                        fillColor: Colors.black12,
                        //filled: true,
                        hintText: "Enter new Text",
                        //contentPadding: const EdgeInsets.all(15),
                        //prefixIcon: const Icon(Icons.email),
                        //icon: const Icon(Icons.man_rounded),
                        enabledBorder: const OutlineInputBorder(
                            //borderRadius: BorderRadius.circular(15),
                            // borderSide: BorderSide(
                            //color: Colors.black12,
                            //  width: 1.0,
                            //)
                            )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

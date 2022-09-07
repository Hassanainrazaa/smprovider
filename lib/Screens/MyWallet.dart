import 'package:flutter/material.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({Key? key}) : super(key: key);

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 29, top: 33),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Text(
                    "My Wallet",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 26),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            Container(
              margin: const EdgeInsets.only(left: 12, right: 11),
              height: 197,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.1,
                      0.4,
                      0.6,
                      0.9,
                    ],
                    colors: [
                      Color.fromRGBO(31, 31, 31, 1),
                      Color.fromRGBO(95, 95, 95, 0.86),
                      Color.fromRGBO(156, 156, 156, 0.58),
                      Color.fromRGBO(145, 144, 144, 0.29),
                      //Color.fromRGBO(196, 196, 196, 0),

                      // Colors.yellow,
                      // Colors.red,
                      // Colors.indigo,
                      // Colors.teal,
                    ],
                  )),
              //Color.fromRGBO(31, 31, 31, 1),
              //Color.fromRGBO(95, 95, 95, 0.86),
              //Color.fromRGBO(156, 156, 156, 0.58),
              //Color.fromRGBO(145, 144, 144, 0.29),
              //Color.fromRGBO(196, 196, 196, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Available Wallet Amount ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "10,000 SAR",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                  height: 43,
                ),
                Text(
                  "SubTotal ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1000 SAR",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 24, bottom: 4, left: 27),
              //color: Colors.yellow,
              child: Row(
                children: const [
                  Text(
                    "To Pay",
                    style: TextStyle(
                        fontSize: 17,
                        color: //Colors.white
                            Color.fromRGBO(173, 179, 188, 1)),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(46, 46, 47, 1),
                  borderRadius: BorderRadius.circular(12)),
              margin: const EdgeInsets.only(top: 0, left: 16, right: 14),
              child: TextFormField(
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  //controller: MyController3,
                  maxLines: 1,
                  //minLines: 10,
                  style: const TextStyle(
                      color: Color.fromRGBO(208, 208, 208, 1),
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      fillColor: Colors.transparent,
                      filled: false,
                      hintText: "1000 SAR",
                      contentPadding:
                          EdgeInsets.only(top: 14, left: 33, bottom: 14),
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(208, 208, 208, 1),
                          fontWeight: FontWeight.w300,
                          fontSize: 12))),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24, bottom: 4, left: 27),
              //color: Colors.yellow,
              child: Row(
                children: const [
                  Text(
                    "Remaining Balance",
                    style: TextStyle(
                        fontSize: 17,
                        color: //Colors.white
                            Color.fromRGBO(173, 179, 188, 1)),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(46, 46, 47, 1),
                  borderRadius: BorderRadius.circular(12)),
              margin: const EdgeInsets.only(top: 0, left: 16, right: 14),
              child: TextFormField(
                  readOnly: true,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  //controller: MyController3,
                  maxLines: 1,
                  //minLines: 10,
                  style: const TextStyle(
                      color: Color.fromRGBO(208, 208, 208, 1),
                      fontWeight: FontWeight.w300,
                      fontSize: 15),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      fillColor: Colors.transparent,
                      filled: false,
                      hintText: "9000 SAR",
                      contentPadding:
                          EdgeInsets.only(top: 14, left: 33, bottom: 14),
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(208, 208, 208, 1),
                          fontWeight: FontWeight.w300,
                          fontSize: 12))),
            ),
            const SizedBox(
              height: 72,
            ),
            InkWell(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus();
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    context: context,
                    builder: (context) {
                      return SingleChildScrollView(
                        child: Container(
                          //width: 378,
                          height: 333,
                          decoration: const BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  topRight: Radius.circular(50))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            //mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const SizedBox(
                                height: 38,
                              ),
                              Center(
                                child: Container(
                                  width: 47,
                                  height: 43,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 3, color: Colors.black),
                                      //color: Colors.black,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Container(
                                    transform:
                                        Matrix4.translationValues(-10, -30, 10),
                                    child: const Icon(
                                      Icons.check_sharp,
                                      size: 80,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 39,
                              ),
                              Container(
                                child: Column(
                                  children: const [
                                    Text(
                                      "Item purchased \n successfully",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff111111),
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "your tracking ID #1234567",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                  padding: const EdgeInsets.only(
                      left: 134, right: 134, top: 12, bottom: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text(
                    "Pay now",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  )),
            )
          ],
        ),
      ),
    ));
  }
}

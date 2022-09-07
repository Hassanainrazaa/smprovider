import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ReuseableWidgets/CHeckout.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 26, right: 16, top: 30, bottom: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Checkout",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Container(
                      //margin: const EdgeInsets.only(top: 28),
                      //color: Colors.blue,
                      child: Row(
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://i.postimg.cc/pryccnKR/13ac3e10a4ed96bbdbdad1e1743cf132-1-2.png"))),
                          const SizedBox(
                            width: 16.55,
                          ),
                          const Text(
                            "Nouman Niazi",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 48, bottom: 4),
                      //color: Colors.yellow,
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            //width: 15,
                            //height: 12,
                            child: Icon(
                              Icons.email,
                              size: 17,
                              color: Color(0xffADB3BC),
                            ),
                          ),
                          SizedBox(
                            width: 24.5,
                          ),
                          Text(
                            "Email Address",
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
                      margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                      child: TextFormField(
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
                              hintText: "mail@zeedlive",
                              contentPadding: EdgeInsets.only(
                                  top: 14, left: 50, bottom: 14),
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(208, 208, 208, 1),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12))),
                    ),
                    Container(
                      //color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Change",
                            style: TextStyle(color: Color(0xffADB3BC)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      //color: Colors.yellow,
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            //width: 15,
                            //height: 12,
                            child: Icon(
                              FontAwesomeIcons.mobile,
                              size: 17,
                              color: Color(0xffADB3BC),
                            ),
                          ),
                          SizedBox(
                            width: 24.5,
                          ),
                          Text(
                            "Mobile",
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
                      margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                      child: TextFormField(
                          keyboardType: TextInputType.phone,
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
                              hintText: "+99634029405",
                              contentPadding: EdgeInsets.only(
                                  top: 14, left: 50, bottom: 14),
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(208, 208, 208, 1),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12))),
                    ),
                    Container(
                      //color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Change",
                            style: TextStyle(color: Color(0xffADB3BC)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 4),
                      //color: Colors.yellow,
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            //width: 15,
                            //height: 12,
                            child: Icon(
                              FontAwesomeIcons.locationDot,
                              size: 17,
                              color: Color(0xffADB3BC),
                            ),
                          ),
                          SizedBox(
                            width: 24.5,
                          ),
                          Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 17,
                                color: //Colors.white
                                    Color.fromRGBO(173, 179, 188, 1)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 109,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(46, 46, 47, 1),
                          borderRadius: BorderRadius.circular(12)),
                      margin: const EdgeInsets.only(top: 0, left: 0, right: 0),
                      child: TextFormField(
                          //controller: MyController3,
                          maxLines: 10,
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
                              hintText: "Enter your address here ",
                              contentPadding: EdgeInsets.only(
                                  top: 14, left: 50, bottom: 14),
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(208, 208, 208, 1),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12))),
                    ),
                    Container(
                      //color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "Change",
                            style: TextStyle(color: Color(0xffADB3BC)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    CheckoutCart("img", "Golden HeadPhones", "Luckas W.",
                        "40.95", "1", context),
                    // const SizedBox(
                    //   height: 39,
                    // ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 28, right: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "SubTotal",
                      style: TextStyle(color: Color(0xffADB3BC), fontSize: 14),
                    ),
                    Text(
                      "100 SAR",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 28, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "SubTotal",
                      style: TextStyle(color: Color(0xffADB3BC), fontSize: 14),
                    ),
                    Text(
                      "Free",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 100),
                child: Column(
                  children: [
                    const Divider(
                      thickness: 1, // thickness of the line
                      indent: 0, // empty space to the leading edge of divider.
                      endIndent:
                          0, // empty space to the trailing edge of the divider.
                      color: Color.fromRGBO(97, 97, 97,
                          1), // The color to use when painting the line.
                      height: 20, // The divider's height extent.
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 28, right: 28),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Total",
                            style: TextStyle(
                                color: Color(0xffADB3BC), fontSize: 17),
                          ),
                          Text(
                            "1000 SAR",
                            style: TextStyle(
                                color: Color(0xffECC911), fontSize: 17),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                            left: 106, right: 106, top: 12, bottom: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)),
                        child: const Text(
                          "Proceed to Checkout",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

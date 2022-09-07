import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SellerShipping02 extends StatefulWidget {
  const SellerShipping02({Key? key}) : super(key: key);

  @override
  State<SellerShipping02> createState() => _SellerShipping02State();
}

class _SellerShipping02State extends State<SellerShipping02> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: const EdgeInsets.fromLTRB(10, 30, 10, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    child: const Icon(
                      FontAwesomeIcons.chevronLeft,
                      color: Colors.white,
                    ),
                    onTap: () {
                      //Get.off(PaymentMethod());
                    },
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  const Text(
                    "Order Information",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 39, right: 9, left: 11),
                height: 114,
                decoration: BoxDecoration(
                    color: const Color(0xff2E2E2F),
                    borderRadius: BorderRadius.circular(14)),
                //color: const Color(0xff2E2E2F),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 6, top: 9),
                          height: 102,
                          width: 102,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(14)),
                          child: Image.asset(
                            "lib/Icons/line.png",
                            height: 94,
                            width: 68,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 15),
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        //height: 100,
                                        //color: Colors.red,
                                        margin: const EdgeInsets.only(
                                          top: 15,
                                        ),
                                        child: const Text(
                                          " Red & black Shoes 15 series ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700),
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Adidas",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                Expanded(
                                  child: Container(
                                      // color: Colors.green,
                                      ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Price",
                                      style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "499 SAR",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 11),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 3, horizontal: 15),
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: InkWell(
                                            onTap: () {
                                              showModalBottomSheet(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  context: context,
                                                  builder: (context) {
                                                    return Container(
                                                      //width: 378,
                                                      height: 408,
                                                      decoration: const BoxDecoration(
                                                          color:
                                                              Color(0xffFFFFFF),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          100),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          50))),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        //mainAxisSize: MainAxisSize.min,
                                                        children: <Widget>[
                                                          Container(
                                                              width: 193,
                                                              height: 35,
                                                              margin:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 53,
                                                              ),
                                                              child: const Text(
                                                                "Seller Shipping",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700,
                                                                    fontSize:
                                                                        26),
                                                              )),
                                                          Container(
                                                            width: 343,
                                                            height: 49,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 41),
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .black,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25)),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  child:
                                                                      const Text(
                                                                    "Request courier for pickup",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                                // const SizedBox(
                                                                //   width: 80,
                                                                //),
                                                                Container(
                                                                  margin: const EdgeInsets
                                                                          .only(
                                                                      left: 70),
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: const Icon(
                                                                      Icons
                                                                          .arrow_forward_ios,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 15),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 343,
                                                            height: 49,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 26),
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .black,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25)),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Container(
                                                                  child:
                                                                      const Text(
                                                                    "Confirm the product is shipped",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            13,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: const EdgeInsets
                                                                          .only(
                                                                      left: 70),
                                                                  child: const Icon(
                                                                      Icons
                                                                          .arrow_forward_ios,
                                                                      color: Colors
                                                                          .white,
                                                                      size: 15),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 343,
                                                            height: 49,
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 26),
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .black,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25)),
                                                            child: Container(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Container(
                                                                    child:
                                                                        const Text(
                                                                      "Provide tracking information to buyer",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              13,
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          color:
                                                                              Colors.white),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    margin: const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            50),
                                                                    child: const Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            15),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  });
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  right: 0),
                                              child: Row(children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      right: 0),
                                                  child: const Text(
                                                    "New Order",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 3,
                                                ),
                                                const Icon(
                                                  FontAwesomeIcons.chevronRight,
                                                  color: Colors.white,
                                                  size: 12,
                                                ),
                                              ]),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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

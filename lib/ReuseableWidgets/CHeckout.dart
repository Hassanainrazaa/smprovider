import 'package:flutter/material.dart';

Widget CheckoutCart(String img, String title, String brand, String price,
    String Quantity, BuildContext context) {
  return Container(
    //margin: const EdgeInsets.only(top: 10, right: 9, left: 11),
    height: 80,
    decoration: BoxDecoration(
        //color: Colors.blue,
        color: const Color(0xff2E2E2F),
        borderRadius: BorderRadius.circular(14)),
    //color: const Color(0xff2E2E2F),
    child: Column(
      children: [
        Container(
          //color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5, top: 4, bottom: 5),
                height: 71,
                width: 71,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(14)),
                child: Image.network(
                  "https://i.postimg.cc/CMsVMR7L/pngwing-8.png",
                  height: 44,
                  width: 55,
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 15),
                  //height: 90,
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
                              child: Text(
                                title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              )),
                        ],
                      ),
                      // const Text(
                      //   "Adidas",
                      //   style: TextStyle(
                      //       fontSize: 10,
                      //       fontWeight: FontWeight.w400,
                      //       color: Colors.white),
                      // ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        //color: Colors.blue,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              price,
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "by $brand",
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffADB3BC)),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 11),
                                  padding: const EdgeInsets.only(bottom: 5),
                                  // padding: const EdgeInsets.symmetric(
                                  //     vertical: 3, horizontal: 15),
                                  decoration: BoxDecoration(
                                      //color: Colors.black,
                                      borderRadius: BorderRadius.circular(6)),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              //width: 378,
                                              height: 408,
                                              decoration: const BoxDecoration(
                                                  color: Color(0xffFFFFFF),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  100),
                                                          topRight:
                                                              Radius.circular(
                                                                  50))),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                //mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Container(
                                                      width: 193,
                                                      height: 35,
                                                      margin:
                                                          const EdgeInsets.only(
                                                        top: 53,
                                                      ),
                                                      child: const Text(
                                                        "Seller Shipping",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 26),
                                                      )),
                                                  Container(
                                                    width: 343,
                                                    height: 49,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 41),
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          child: const Text(
                                                            "Request courier for pickup",
                                                            style: TextStyle(
                                                                fontSize: 13,
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
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 70),
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: const Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color:
                                                                  Colors.white,
                                                              size: 15),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 343,
                                                    height: 49,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 26),
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Container(
                                                          child: const Text(
                                                            "Confirm the product is shipped",
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 70),
                                                          child: const Icon(
                                                              Icons
                                                                  .arrow_forward_ios,
                                                              color:
                                                                  Colors.white,
                                                              size: 15),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 343,
                                                    height: 49,
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 26),
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25)),
                                                    child: Container(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Container(
                                                            child: const Text(
                                                              "Provide tracking information to buyer",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 50),
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
                                                  ),
                                                ],
                                              ),
                                            );
                                          });
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          //color: Colors.red
                                          ),
                                      margin: const EdgeInsets.only(right: 0),
                                      child: Column(children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 0),
                                          child: const Text(
                                            "QTY",
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xffD0D0D0)),
                                          ),
                                        ),
                                        Text(
                                          Quantity,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xffD0D0D0)),
                                        )
                                      ]),
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
            ],
          ),
        ),
      ],
    ),
  );
}

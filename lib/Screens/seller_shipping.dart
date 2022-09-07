import 'package:flutter/material.dart';

import '../ReuseableWidgets/sellershippingCard.dart';

class SellerShipping extends StatefulWidget {
  const SellerShipping({Key? key}) : super(key: key);

  @override
  State<SellerShipping> createState() => _SellerShippingState();
}

class _SellerShippingState extends State<SellerShipping> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        top: 35,
                        left: 21,
                      ),
                      width: 6.28,
                      height: 13.62,
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      //width: 227,
                      //height: 35,
                      margin: const EdgeInsets.only(top: 50, left: 23),
                      child: const Text(
                        "Order Comfirmation",
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ShippingCard("https://i.postimg.cc/mrvTcrnH/pngwing-3.png",
                  " Red & black Shoes 15 series ", "Nike", "600 SAR", context),
              ShippingCard("img", "title", "brand", " ", context)
            ],
          )),
    );
  }
}

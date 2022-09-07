import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ReuseableWidgets/SellerShippingOrderInfoComponent.dart';

class SellerShippingOrderInfoView extends StatelessWidget {
  const SellerShippingOrderInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Container(
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
                  const SizedBox(
                    height: 30,
                  ),
                  ListView.separated(
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return SellerShippingOrderInfoComponent(
                            passindex: index);
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          Container(
                            height: 10,
                            // color: Colors.green,
                          )),
                ],
              ),
            ),
          )),
    );
  }
}

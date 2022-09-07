import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottomsheetSellerOrderInfo.dart';

class SellerShippingOrderInfoComponent extends StatelessWidget {
  final int passindex;
  const SellerShippingOrderInfoComponent({
    Key? key,
    required this.passindex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          color: Color(0xff2e2e2f),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // color: Colors.red,
                      margin: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 15),
                      child: Image.network(
                        "https://i.postimg.cc/D0FPbmBp/pngwing-4.png",
                        height: 94,
                        width: 68,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          passindex == 2
                              ? 'Wallet Lether Bag'
                              : 'Pink & White Women Shoes',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        passindex == 2
                            ? const Text(
                                'Paid',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              )
                            : Container(),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "499 SAR",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Container(
                              padding: passindex == 2
                                  ? const EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 15)
                                  : const EdgeInsets.symmetric(
                                      vertical: 3, horizontal: 5),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(6)),
                              child: passindex == 2
                                  ? const Text(
                                      "Delivered",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    )
                                  : InkWell(
                                      onTap: () {
                                        showModalBottomSheet<dynamic>(
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30.0),
                                                topRight:
                                                    Radius.circular(30.0)),
                                          ),
                                          context: context,
                                          builder: (BuildContext bc) {
                                            return bottomsheetSellerOrderInfo(
                                              context: context,
                                              passontapReqCourier: () {
                                                /// passontapReqCourier
                                                // Navigator.pushNamed(
                                                //   context,
                                                //   RoutesName
                                                //       .sellerShippingRequestCourierscreen,
                                                // );
                                              },
                                              passontapConProduct: () {
                                                /// passontapConProduct
                                              },
                                              passontapTrackInfo: () {
                                                /// passontapTrackInfo
                                              },
                                            );
                                          },
                                        );
                                      },
                                      child: Row(children: const [
                                        Text(
                                          "New Order",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(
                                          FontAwesomeIcons.chevronRight,
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ]),
                                    ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        // Get.to(Notification_Bids());
      },
    );
  }
}

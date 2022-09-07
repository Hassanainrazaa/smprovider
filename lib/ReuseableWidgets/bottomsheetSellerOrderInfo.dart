import 'package:flutter/material.dart';

Widget bottomsheetSellerOrderInfo({
  context,
  passontapReqCourier,
  passontapConProduct,
  passontapTrackInfo,
}) {
  return Wrap(
    children: [
      SizedBox(
        // color: Colors.transparent, //could change this to Color(0xFF737373),
        //so you don't have to change MaterialApp canvasColor
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              bottomLine(
                context: BuildContext,
                width: MediaQuery.of(context).size.width * 0.4,
                height: 5.0,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Seller Shipping',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    sellerShippingButton(
                        context: context,
                        onTap: passontapReqCourier,
                        passButtonText: 'Request Courier For Pickup',
                        passButtonColor: Colors.black,
                        passBorder: Border.all(
                          color: Colors
                              .black, //                   <--- border color
                          width: 1.0,
                        ),
                        textColor: Colors.white),
                    const SizedBox(
                      height: 25,
                    ),

                    ///
                    sellerShippingButton(
                        context: context,
                        onTap: passontapConProduct,
                        passButtonText: 'Confirm The product Is Shipped',
                        passButtonColor: Colors.white,
                        passBorder: Border.all(
                          color: Colors
                              .white, //                   <--- border color
                          width: 1.0,
                        ),
                        textColor: Colors.white),
                    const SizedBox(
                      height: 25,
                    ),

                    ///
                    sellerShippingButton(
                        context: context,
                        onTap: passontapTrackInfo,
                        passButtonText: 'Provide Tracking Information To Buyer',
                        passButtonColor: Colors.black,
                        passBorder: Border.all(
                          color: Colors
                              .black, //                   <--- border color
                          width: 1.0,
                        ),
                        textColor: Colors.white),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              bottomLine(
                context: BuildContext,
                width: MediaQuery.of(context).size.width * 0.4,
                height: 5.0,
              ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    ],
  );
}

bottomLine(
    {required Type context, required double width, required double height}) {}

sellerShippingButton(
    {required context,
    required onTap,
    required String passButtonText,
    required passButtonColor,
    required Border passBorder,
    required textColor}) {}

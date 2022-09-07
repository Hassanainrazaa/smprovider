import "package:flutter/material.dart";

class SellerProfilePublic1 extends StatefulWidget {
  const SellerProfilePublic1({Key? key}) : super(key: key);

  @override
  State<SellerProfilePublic1> createState() => _SellerProfilePublic1State();
}

class _SellerProfilePublic1State extends State<SellerProfilePublic1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Stack(
              children: [
                const Align(
                  child: Icon(
                    Icons.abc_sharp,
                    size: 50,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "https://i.postimg.cc/bNgbQj7Z/pexels-photo-220570-1-1-1.png",
                    //width: 382,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )));
  }
}

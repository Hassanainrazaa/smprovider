/////////////////////////////////// Collection Product Image public ///////////////////////////////////////////////

import 'package:flutter/material.dart';

class CollectionProject extends StatefulWidget {
  const CollectionProject({Key? key}) : super(key: key);

  @override
  State<CollectionProject> createState() => _CollectionProjectState();
}

class _CollectionProjectState extends State<CollectionProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 50, left: 22),
                      width: 6.82,
                      height: 13.62,
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      )),
                  Container(
                    margin: const EdgeInsets.only(top: 50, left: 22, right: 30),
                    width: 6.82,
                    height: 13.62,
                    child: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                //width: 375,
                height: 375,
                decoration: const BoxDecoration(color: Color(0xffD9D9D9)),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 19, top: 11),
                        width: 18.33,
                        height: 16.67,
                        child: const Icon(
                          Icons.thumb_up_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 19, top: 11),
                    width: 18.33,
                    height: 16.67,
                    child: const Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 19, top: 11),
                    width: 18.33,
                    height: 16.67,
                    child: const Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 230, top: 11),
                    width: 18.33,
                    height: 16.67,
                    child: const Icon(
                      Icons.heart_broken,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 5, left: 19),
                    child: const Text(
                      "3.5 K",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 37,
                    height: 51,
                    margin: const EdgeInsets.only(left: 14, top: 13),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://i.postimg.cc/Cx9TMh8d/13ac3e10a4ed96bbdbdad1e1743cf132-1-1.png'),
                        //fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 13),
                        child: const Text(
                          "Nouman Niazi",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 14),
                          child: const Text(
                            "Entrepreneur",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(
                                  0xffADB3BC,
                                )),
                          ))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 50, right: 50, top: 10, bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    margin: const EdgeInsets.only(left: 120),
                    child: const Text(
                      "Follow",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 18, top: 12),
                width: 302,
                height: 38,
                child: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.. more",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 19),
                child: const Text(
                  "May 17",
                  style: TextStyle(color: Color(0xff828282)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 50, left: 22),
                          width: 6.82,
                          height: 13.62,
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          )),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 50, left: 22, right: 30),
                        width: 6.82,
                        height: 13.62,
                        child: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16.7),
                    //width: 375,
                    height: 375,
                    decoration: const BoxDecoration(color: Color(0xffD9D9D9)),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 19, top: 11),
                            width: 18.33,
                            height: 16.67,
                            child: const Icon(
                              Icons.thumb_up_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 19, top: 11),
                        width: 18.33,
                        height: 16.67,
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 19, top: 11),
                        width: 18.33,
                        height: 16.67,
                        child: const Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 230, top: 11),
                        width: 18.33,
                        height: 16.67,
                        child: const Icon(
                          Icons.heart_broken,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 5, left: 19),
                        child: const Text(
                          "3.5 K",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 37,
                        height: 51,
                        margin: const EdgeInsets.only(left: 14, top: 13),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://i.postimg.cc/Cx9TMh8d/13ac3e10a4ed96bbdbdad1e1743cf132-1-1.png'),
                            //fit: BoxFit.fill
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 13),
                            child: const Text(
                              "Nouman Niazi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 14),
                              child: const Text(
                                "Entrepreneur",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(
                                      0xffADB3BC,
                                    )),
                              ))
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 50, right: 50, top: 10, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.white),
                        margin: const EdgeInsets.only(left: 120),
                        child: const Text(
                          "Follow",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 18, top: 12),
                    width: 302,
                    height: 38,
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.. more",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 19),
                    child: const Text(
                      "May 17",
                      style: TextStyle(color: Color(0xff828282)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

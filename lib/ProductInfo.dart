import 'dart:io' show File;

import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductInfo extends StatefulWidget {
  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  //var SelectedItems = 'Select Items';
  //final List<XFile> _imagelist = [];
  XFile? _image;
  File? imagefile;
  final ImagePicker imagePicker = ImagePicker();
  final List<XFile>? imageFileList = [];
  List<XFile>? selectedImages;

  //XFile? selectedImages;
  //List<XFile>? selectedImages;

  Future getImageCamera() async {
    final ImagePicker picker = ImagePicker();
    final ImageCam = await picker.pickImage(source: ImageSource.camera);
    print(imagefile);
    setState(() {
      imagefile = File(ImageCam!.path);
      _image = ImageCam;
    });
    imagefile = File(ImageCam!.path);
  }

  Future getImageGallery() async {
    final ImagePicker picker = ImagePicker();
    final ImageCam = await picker.pickImage(source: ImageSource.gallery);
    print(imagefile);
    setState(() {
      imagefile = File(ImageCam!.path);
      _image = ImageCam;
    });
  }

  getMultiImages() async {
    final ImagePicker imagePicker = ImagePicker();
    selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList?.addAll(selectedImages!);
    }
    print("Image List Length:${imageFileList!.length}");
    print(selectedImages.toString());
    setState(() {});
  }

  TextEditingController MyController1 = TextEditingController();
  TextEditingController MyController2 = TextEditingController();
  TextEditingController MyController3 = TextEditingController();
  TextEditingController MyController4 = TextEditingController();
  TextEditingController MyController5 = TextEditingController();
  TextEditingController MyController6 = TextEditingController();
  TextEditingController MyController7 = TextEditingController();
  TextEditingController dateTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  TextEditingController endDateController = TextEditingController();

  double? num1, result = 10, revenue = 90;
  int? resultInt, revenueInt;
  String? rev;
  bool isChecked = false;
  bool _value = false;
  String? newAuction;

  Commision() {
    setState(() {
      num1 = double.parse(MyController4.text);
      result = num1! * 1 / 10;

      revenue = num1! - 10;

      // resultInt = result!.toInt();
      // revenueInt = revenueInt!.toInt();
    });
  }

  // List of items in our dropdown menu
  var itemslist = [
    'New Auction',
    'Buy now',
  ];
  String? selectedval;

  var itemlist2 = ['SAR', 'UAE'];
  String? selectedval2;

  final DateTime _date = DateTime.now();
  String? formattedDate;
  String? formattedTime;

  Future _selectStartDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(
            2000), //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2101));

    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(
          formattedDate); //formatted date output using intl package =>  2021-03-16
      //you can implement different kind of Date Format here according to your requirement

      // dateTimeController.text =
      //     formattedTime!; //set output date to TextField value.
      //print("${formattedDate}234567u8i9");

    } else {
      print("Date is not selected");
    }

    TimeOfDay? pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context, //context of current state
    );

    if (pickedTime != null) {
      //print(pickedTime.format(context)); //output 10:51 PM
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      //converting to DateTime so that we can further format on different pattern.
      print(parsedTime); //output 1970-01-01 22:53:00.000
      formattedTime = DateFormat('HH:mm').format(parsedTime);
      print(formattedTime); //output 14:59:00
      //DateFormat() is from intl package, you can format the time on any pattern you need.

      setState(() {
        dateTimeController.text = formattedTime! + formattedDate!;
        // dateTimeController.text =
        //     formattedDate!; //set output date to TextField value.
        print("${formattedTime}234567u8i9");
      });
    } else {
      print("Time is not selected");
    }

    setState(() {
      MyController7.text = "${formattedDate!}  ${formattedTime!}";
      //MyController7.text = formattedTime!;
    });
  }

  Future _selectEndTimeDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(
            2000), //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2101));

    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(
          formattedDate); //formatted date output using intl package =>  2021-03-16
      //you can implement different kind of Date Format here according to your requirement

      // dateTimeController.text =
      //     formattedTime!; //set output date to TextField value.
      //print("${formattedDate}234567u8i9");

    } else {
      print("Date is not selected");
    }

    TimeOfDay? pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context, //context of current state
    );

    if (pickedTime != null) {
      //print(pickedTime.format(context)); //output 10:51 PM
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      //converting to DateTime so that we can further format on different pattern.
      print(parsedTime); //output 1970-01-01 22:53:00.000
      formattedTime = DateFormat('HH:mm').format(parsedTime);
      print(formattedTime); //output 14:59:00
      //DateFormat() is from intl package, you can format the time on any pattern you need.

      setState(() {
        endDateController.text = "${formattedDate!}  ${formattedTime!}";
        // dateTimeController.text =
        //     formattedDate!; //set output date to TextField value.
        print("${formattedTime}234567u8i9");
      });
    } else {
      print("Time is not selected");
    }

    setState(() {
      MyController7.text = "${formattedDate!}  ${formattedTime!}";
      //MyController7.text = formattedTime!;
    });
  }

  Future _selectEndTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context, //context of current state
    );

    if (pickedTime != null) {
      print(pickedTime.format(context)); //output 10:51 PM
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      //converting to DateTime so that we can further format on different pattern.
      print(parsedTime); //output 1970-01-01 22:53:00.000
      formattedTime = DateFormat('HH:mm').format(parsedTime);
      print(formattedTime); //output 14:59:00
      //DateFormat() is from intl package, you can format the time on any pattern you need.

      setState(() {
        endTimeController.text =
            formattedTime!; //set output date to TextField value.
        print("${formattedTime}234567u8i9");
      });
    } else {
      print("Time is not selected");
    }
  }

  Future _selectStartTimeDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(
            2000), //DateTime.now() - not to allow to choose before today.
        lastDate: DateTime(2101));

    if (pickedDate != null) {
      print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
      formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
      print(
          formattedDate); //formatted date output using intl package =>  2021-03-16
      //you can implement different kind of Date Format here according to your requirement

      setState(() {
        dateTimeController.text =
            formattedDate!; //set output date to TextField value.
        //print("${formattedDate}234567u8i9");
      });
    } else {
      print("Date is not selected");
    }
  }

  DateTime? date;
  String? getText() {
    if (date == null) {
      return "select the date";
    } else {
      return DateFormat('MM/dd/yyyy').format(date!);
    }
  }

  String? getText1() {
    if (time == null) {
      return "select time";
    } else {
      final hours = time!.hour.toString().padLeft(2, "0");
      final minutes = time!.minute.toString().padLeft(2, "0");
      return '$hours:$minutes';
    }
  }

  Future? pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year - 5));

    if (newDate == null) {
      return;
    }
    setState(() {
      date = newDate;
    });
  }

  TimeOfDay? time;

  Future? pickTime(BuildContext context) async {
    const initialTime = TimeOfDay(hour: 9, minute: 0);
    final newTime =
        await showTimePicker(context: context, initialTime: initialTime);

    if (newTime == null) {
      return;
    } else {
      setState(() {
        time = newTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 50, left: 25),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Container(
                      margin: const EdgeInsets.only(top: 50, left: 10),
                      child: const Text(
                        "New Auction",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(46, 46, 47, 1),
                      border: const Border(right: BorderSide.none),
                      borderRadius: BorderRadius.circular(15)),
                  margin: const EdgeInsets.only(top: 35, left: 20, right: 20),
                  width: 850,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //     width: 210,
                      //     child: TextFormField(
                      //         readOnly: true,
                      //         controller: MyController1,
                      //         maxLines: 1,
                      //         //minLines: 10,
                      //         style: const TextStyle(
                      //             color: Color.fromRGBO(208, 208, 208, 1),
                      //             fontWeight: FontWeight.w300,
                      //             fontSize: 15),
                      //         decoration: const InputDecoration(
                      //           border: InputBorder.none,
                      //           focusedBorder: InputBorder.none,
                      //           enabledBorder: InputBorder.none,
                      //           errorBorder: InputBorder.none,
                      //           disabledBorder: InputBorder.none,

                      //           //border: InputBorder.none,
                      //           //focusedBorder: InputBorder.none,
                      //           //enabledBorder: InputBorder.none,
                      //           //errorBorder: InputBorder.none,
                      //           //disabledBorder: InputBorder.none,
                      //           //border: InputBorder.none,
                      //           fillColor: Colors.transparent,
                      //           filled: false,
                      //           hintText: "Select item",
                      //           hintStyle: TextStyle(
                      //             color: Color.fromRGBO(208, 208, 208, 1),
                      //             fontSize: 16,
                      //           ),

                      //           contentPadding: EdgeInsets.all(15),
                      //           //           //prefixIcon: const Icon(Icons.email),
                      //           //           //icon: const Icon(Icons.man_rounded),
                      //           //           // enabledBorder: const OutlineInputBorder(
                      //           //           //     borderRadius: BorderRadius.only(
                      //           //           //         topLeft: Radius.circular(15),
                      //           //           //         bottomLeft: Radius.circular(15)),
                      //           //           //     borderSide: BorderSide(
                      //           //           //       color: Colors.black12,
                      //           //           //       width: 1.0,
                      //           //           //     )
                      //           //           //     )
                      //         ))),
                      Container(
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: const Color.fromRGBO(46, 46, 47, 1),
                          ),
                          child: DropdownButtonFormField<String>(
                            icon: Container(
                              padding: const EdgeInsets.only(right: 10),
                              child: const Icon(
                                FontAwesomeIcons.chevronDown,
                                size: 12,
                              ),
                            ),
                            dropdownColor: const Color(0xff616161),
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 20),
                                hintText: "Select Item",
                                hintStyle: TextStyle(color: Color(0xff616161))),
                            value: selectedval,
                            items: itemslist
                                .map((label) => DropdownMenuItem(
                                      value: label,
                                      child: Text(label),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() => selectedval = value);
                            },
                          )),
                    ],
                  ),
                ),

                // Container(
                //   child: DropdownButton(
                //     value: SelectedItems,
                //     items: items.map((item) {
                //       return DropdownMenuItem<String>(
                //         value: SelectedItems,
                //         child: Text(item),
                //       );
                //     }).toList(),
                //     onChanged: (item) {
                //       setState(() {
                //         SelectedItems = item as String;
                //       });
                //     },
                //   ),
                // ),

                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 15, left: 25),
                              child: const Text(
                                "Please Add Images",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Color.fromRGBO(255, 255, 255, 1)),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.only(top: 17),
                              margin: const EdgeInsets.only(left: 25),
                              child: const Text(
                                "Watches > Rolex > President",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xffADB3BC)),
                              )),
                        ],
                      ),

                      // ElevatedButton(
                      //   onPressed: () {
                      //     getMultiImages().then((value) {
                      //       if (imageFileList!.length > 10) {
                      //         AnimatedSnackBar.material(
                      //           'Cannot add more than 10 Pics',
                      //           type: AnimatedSnackBarType.info,
                      //           mobileSnackBarPosition: MobileSnackBarPosition
                      //               .bottom, // Position of snackbar on mobile devices
                      //           desktopSnackBarPosition: DesktopSnackBarPosition
                      //               .topRight, // Position of snackbar on desktop devices
                      //         ).show(context);
                      //         imageFileList!.removeRange(10, imageFileList!.length);
                      //       }
                      //     });
                      //   },
                      //   child: const Text('Select Images'),
                      // ),

                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(left: 0),
                        margin: const EdgeInsets.only(
                          top: 33,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(right: 20, left: 20),
                              margin: const EdgeInsets.only(left: 0),
                              height: 140,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                  physics: const ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: imageFileList!.length > 10
                                      ? 10
                                      : imageFileList!.length + 1,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    print(imageFileList!.length.toString());
                                    //return GestureDetector(
                                    // onTap: () {
                                    //   Alert(
                                    //     context: context,
                                    //     type: AlertType.warning,
                                    //     title: "Choose",
                                    //     desc: "Choose image source",
                                    //     buttons: [
                                    //       DialogButton(
                                    //         onPressed: () {
                                    //           getImageCamera();
                                    //           Navigator.pop(context);
                                    //         },
                                    //         color: const Color.fromRGBO(0, 179, 134, 1.0),
                                    //         child: const Text(
                                    //           "Camera",
                                    //           style: TextStyle(
                                    //               color: Colors.white, fontSize: 20),
                                    //         ),
                                    //       ),
                                    //       DialogButton(
                                    //         onPressed: () {
                                    //           getImageGallery();
                                    //           Navigator.pop(context);
                                    //         },
                                    //         gradient: const LinearGradient(colors: [
                                    //           Color.fromRGBO(116, 116, 191, 1.0),
                                    //           Color.fromRGBO(52, 138, 199, 1.0)
                                    //         ]),
                                    //         child: const Text(
                                    //           "Gallery",
                                    //           style: TextStyle(
                                    //               color: Colors.white, fontSize: 20),
                                    //         ),
                                    //       )
                                    //     ],
                                    //   ).show();
                                    //   //getImageCamera();
                                    //   //getImageGallery();
                                    //
                                    // },
                                    return index != imageFileList!.length
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(left: 0),
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            width: 121,
                                            height: 121,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      17), // Image border
                                              child: SizedBox.fromSize(
                                                  size: const Size.fromRadius(
                                                      40), // Image radius
                                                  child: Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                              color: Colors
                                                                  .black12),
                                                      child:
                                                          //Image.file(
                                                          Image.file(
                                                        File(imageFileList![
                                                                index]
                                                            .path),
                                                        //imagefile as File,
                                                        //width: 121,
                                                        //height: 121,
                                                        fit: BoxFit.cover,
                                                        //height: 50,
                                                      ))),
                                            ),
                                          )
                                        : imageFileList!.length > 9
                                            ? Container()
                                            : GestureDetector(
                                                onTap: () {
                                                  getMultiImages().then(
                                                    (value) {
                                                      if (imageFileList!
                                                              .length >
                                                          10) {
                                                        AnimatedSnackBar
                                                            .material(
                                                          'Cannot Select More Than 10 Pics',
                                                          type:
                                                              AnimatedSnackBarType
                                                                  .info,
                                                          mobileSnackBarPosition:
                                                              MobileSnackBarPosition
                                                                  .bottom, // Position of snackbar on mobile devices
                                                          desktopSnackBarPosition:
                                                              DesktopSnackBarPosition
                                                                  .topRight, // Position of snackbar on desktop devices
                                                        ).show(context);
                                                        imageFileList
                                                            ?.removeRange(
                                                                10,
                                                                imageFileList!
                                                                    .length);
                                                      }
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            left: 5, right: 15),
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 5),
                                                    //color: Colors.black12,
                                                    width: 121,
                                                    height: 121,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(17),
                                                        color: const Color(
                                                            0xff616161)),
                                                    alignment: Alignment.center,
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    )),
                                              );

                                    //);
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 12, left: 20),
                              child: const Text(
                                "It is suggested to add more pictures of your lot.",
                                style: TextStyle(color: Color(0xffADB3BC)),
                              )),
                        ],
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 22, top: 31),
                          child: const Text(
                            "Title",
                            style: TextStyle(
                                fontSize: 17, color: Color(0xffADB3BC)),
                          )),
                      Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromRGBO(46, 46, 47, 1),
                        ),
                        margin:
                            const EdgeInsets.only(top: 5, left: 16, right: 20),
                        child: TextFormField(
                            controller: MyController2,
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

                                //border: InputBorder.none,
                                //focusedBorder: InputBorder.none,
                                //enabledBorder: InputBorder.none,
                                //errorBorder: InputBorder.none,
                                //disabledBorder: InputBorder.none,
                                //border: InputBorder.none,
                                fillColor: Colors.transparent,
                                filled: false,
                                hintText: "Make your product title stand out",
                                contentPadding: EdgeInsets.only(left: 28),
                                hintStyle: TextStyle(
                                    color: Color(0xffD0D0D0),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12)
                                //prefixIcon: const Icon(Icons.email),
                                //icon: const Icon(Icons.man_rounded),
                                // enabledBorder: const OutlineInputBorder(
                                //     borderRadius: BorderRadius.only(
                                //         topLeft: Radius.circular(15),
                                //         bottomLeft: Radius.circular(15)),
                                //     borderSide: BorderSide(
                                //       color: Colors.black12,
                                //       width: 1.0,
                                //     )
                                //     )
                                )),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 22, top: 22),
                          child: const Text(
                            "Description",
                            style: TextStyle(
                                fontSize: 17,
                                color: //Colors.white
                                    Color.fromRGBO(173, 179, 188, 1)),
                          )),

                      Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(46, 46, 47, 1),
                            borderRadius: BorderRadius.circular(12)),
                        margin:
                            const EdgeInsets.only(top: 5, left: 20, right: 20),
                        child: TextFormField(
                            controller: MyController3,
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
                                //border: InputBorder.none,
                                //focusedBorder: InputBorder.none,
                                //enabledBorder: InputBorder.none,
                                //errorBorder: InputBorder.none,
                                //disabledBorder: InputBorder.none,
                                //border: InputBorder.none,
                                fillColor: Colors.transparent,
                                filled: false,
                                hintText: "Shortly describe the lot",
                                contentPadding:
                                    EdgeInsets.only(top: 0, left: 24),
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(208, 208, 208, 1),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12)
                                //prefixIcon: const Icon(Icons.email),
                                //icon: const Icon(Icons.man_rounded),
                                // enabledBorder: const OutlineInputBorder(
                                //     borderRadius: BorderRadius.only(
                                //         topLeft: Radius.circular(15),
                                //         bottomLeft: Radius.circular(15)),
                                //     borderSide: BorderSide(
                                //       color: Colors.black12,
                                //       width: 1.0,
                                //     )
                                //     )
                                )),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 22, top: 22),
                          child: const Text(
                            "Lot",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromRGBO(173, 179, 188, 1)),
                          )),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(46, 46, 47, 1),
                            border: const Border(right: BorderSide.none),
                            borderRadius: BorderRadius.circular(15)),
                        margin:
                            const EdgeInsets.only(top: 0, left: 20, right: 20),
                        width: 850,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 290,
                                child: TextFormField(
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    keyboardType: TextInputType.datetime,
                                    validator: (val) {
                                      if (val!.isEmpty ||
                                          !RegExp(r'^(?:[0][1-9])?[0-9]{10,12}$')
                                              .hasMatch(val)) {
                                        return "enter the correct amount";
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      Commision();
                                      value = result.toString();
                                      value = revenue.toString();
                                      print(num1);
                                      //num1 = double.parse(MyController3.text);
                                      // reuslt = num1! * 1 / 10;
                                      // reuslt = value as double;
                                    },
                                    controller: MyController4,
                                    maxLines: 1,
                                    //minLines: 10,
                                    style: const TextStyle(
                                        color: Color.fromRGBO(208, 208, 208, 1),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      suffixIcon: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        padding: const EdgeInsets.only(
                                            top: 15, bottom: 15, left: 80),
                                        child: Image.asset(
                                          "lib/Icons/line.png",
                                          height: 10,
                                          color: const Color.fromRGBO(
                                              97, 97, 97, 1),
                                        ),
                                      ),
                                      //border: InputBorder.none,
                                      //focusedBorder: InputBorder.none,
                                      //enabledBorder: InputBorder.none,
                                      //errorBorder: InputBorder.none,
                                      //disabledBorder: InputBorder.none,
                                      //border: InputBorder.none,
                                      fillColor: Colors.transparent,
                                      filled: false,
                                      hintText: "100 SAR",
                                      hintStyle: const TextStyle(
                                          color: Color(0xffD0D0D0),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12),
                                      contentPadding: const EdgeInsets.only(
                                          top: 15, left: 24),
                                      //prefixIcon: const Icon(Icons.email),
                                      //icon: const Icon(Icons.man_rounded),
                                      // enabledBorder: const OutlineInputBorder(
                                      //     borderRadius: BorderRadius.only(
                                      //         topLeft: Radius.circular(15),
                                      //         bottomLeft: Radius.circular(15)),
                                      //     borderSide: BorderSide(
                                      //       color: Colors.black12,
                                      //       width: 1.0,
                                      //     )
                                      //     )
                                    ))),
                            Container(
                              //margin: const EdgeInsets.only(),
                              padding: const EdgeInsets.only(right: 5),

                              //width: MediaQuery.of(context).size.width,
                              //padding: const EdgeInsets.only(left: 100),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  icon: Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      margin: const EdgeInsets.only(left: 0),
                                      child: const Icon(
                                        FontAwesomeIcons.chevronDown,
                                        size: 12,
                                      )),
                                  value: selectedval2 ?? itemlist2[0],
                                  //?? itemlist2[0],
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedval2 = newValue;
                                    });
                                  },
                                  items: itemlist2
                                      .map<DropdownMenuItem<String>>(
                                          (item) => DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        97, 97, 97, 1),
                                                  ),
                                                ),
                                              ))
                                      .toList(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Container(
                      //   width: 350,
                      //   height: 50,
                      //   decoration: const BoxDecoration(
                      //       //color: Colors.black12,
                      //       ),
                      //   margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      //   child: TextFormField(
                      //       controller: MyController4,
                      //       maxLines: 1,
                      //       //minLines: 10,
                      //       style: const TextStyle(
                      //         fontSize: 15,
                      //         //color: Colors.blue,
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //       decoration: InputDecoration(
                      //           fillColor: Colors.black12,
                      //           filled: true,
                      //           hintText: "100 SAR",
                      //           contentPadding:
                      //               const EdgeInsets.only(left: 28, top: 13, bottom: 15),
                      //           //prefixIcon: const Icon(Icons.email),
                      //           //icon: const Icon(Icons.man_rounded),
                      //           enabledBorder: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(15),
                      //               borderSide: const BorderSide(
                      //                 color: Colors.black12,
                      //                 width: 1.0,
                      //               )))),
                      // ),

                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 22, top: 22),
                          child: const Text(
                            "Commission fee",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromRGBO(173, 179, 188, 1)),
                          )),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(46, 46, 47, 1),
                            border: const Border(right: BorderSide.none),
                            borderRadius: BorderRadius.circular(12)),
                        margin:
                            const EdgeInsets.only(top: 0, left: 20, right: 20),
                        width: 850,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 290,
                                child: TextFormField(
                                    onChanged: (val) {
                                      val = result.toString();
                                    },
                                    //validator: ,
                                    readOnly: true,
                                    //controller: MyController5,
                                    maxLines: 1,
                                    //minLines: 10,
                                    style: const TextStyle(
                                        color: Color.fromRGBO(208, 208, 208, 1),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 15),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      suffixIcon: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        padding: const EdgeInsets.only(
                                            top: 15, bottom: 15, left: 80),
                                        child: Image.asset(
                                          "lib/Icons/line.png",
                                          height: 10,
                                          color: const Color.fromRGBO(
                                              97, 97, 97, 1),
                                        ),
                                      ),
                                      //border: InputBorder.none,
                                      //focusedBorder: InputBorder.none,
                                      //enabledBorder: InputBorder.none,
                                      //errorBorder: InputBorder.none,
                                      //disabledBorder: InputBorder.none,
                                      //border: InputBorder.none,
                                      fillColor: Colors.transparent,
                                      filled: false,
                                      hintText: "$result commission",
                                      hintStyle: const TextStyle(
                                          color:
                                              Color.fromRGBO(208, 208, 208, 1),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12),
                                      contentPadding: const EdgeInsets.only(
                                          top: 13,
                                          bottom: 15,
                                          left:
                                              24), //prefixIcon: const Icon(Icons.email),
                                      //icon: const Icon(Icons.man_rounded),
                                      // enabledBorder: const OutlineInputBorder(
                                      //     borderRadius: BorderRadius.only(
                                      //         topLeft: Radius.circular(15),
                                      //         bottomLeft: Radius.circular(15)),
                                      //     borderSide: BorderSide(
                                      //       color: Colors.black12,
                                      //       width: 1.0,
                                      //     )
                                      //     )
                                    ))),
                            Container(
                              //margin: const EdgeInsets.only(),
                              padding: const EdgeInsets.only(right: 5),

                              //width: MediaQuery.of(context).size.width,
                              //padding: const EdgeInsets.only(left: 100),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  icon: Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      margin: const EdgeInsets.only(left: 0),
                                      child: const Icon(
                                        FontAwesomeIcons.chevronDown,
                                        size: 12,
                                      )),
                                  value: selectedval2 ?? itemlist2[0],
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedval = newValue;
                                    });
                                  },
                                  items: itemlist2
                                      .map<DropdownMenuItem<String>>(
                                          (item) => DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        97, 97, 97, 1),
                                                  ),
                                                ),
                                              ))
                                      .toList(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      // Container(
                      //   //width: 350,
                      //   height: 50,
                      //   decoration: const BoxDecoration(
                      //       //color: Colors.black12,
                      //       ),
                      //   margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      //   child: TextFormField(
                      //       controller: MyController5,
                      //       maxLines: 1,
                      //       //minLines: 10,
                      //       style: const TextStyle(
                      //         fontSize: 15,
                      //         //color: Colors.blue,
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //       decoration: InputDecoration(
                      //           fillColor: Colors.black12,
                      //           filled: true,
                      //           hintText: "10% company commission",
                      //           contentPadding:
                      //               const EdgeInsets.only(left: 25, top: 13, bottom: 15),
                      //           //prefixIcon: const Icon(Icons.email),
                      //           //icon: const Icon(Icons.man_rounded),
                      //           enabledBorder: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(15),
                      //               borderSide: const BorderSide(
                      //                 color: Colors.black12,
                      //                 width: 1.0,
                      //               )))),
                      // ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 22, top: 22),
                          child: const Text(
                            "Revenue",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromRGBO(173, 179, 188, 1)),
                          )),
                      // Container(
                      //   //width: 350,
                      //   height: 50,
                      //   decoration: const BoxDecoration(
                      //       //color: Colors.black12,
                      //       ),
                      //   margin: const EdgeInsets.only(top: 5, left: 20, right: 20),
                      //   child: TextFormField(
                      //       controller: MyController6,
                      //       maxLines: 1,
                      //       //minLines: 10,
                      //       style: const TextStyle(
                      //         fontSize: 15,
                      //         //color: Colors.blue,
                      //         fontWeight: FontWeight.w600,
                      //       ),
                      //       decoration: InputDecoration(
                      //           fillColor: Colors.black12,
                      //           filled: true,
                      //           hintText: "90 SAR",
                      //           contentPadding:
                      //               const EdgeInsets.only(left: 28, top: 13, bottom: 15),
                      //           //prefixIcon: const Icon(Icons.email),
                      //           //icon: const Icon(Icons.man_rounded),

                      //           //border: InputBorder.none,
                      //           //focusedBorder: InputBorder.none,
                      //           //enabledBorder: InputBorder.none,
                      //           //errorBorder: InputBorder.none,
                      //           //disabledBorder: InputBorder.none,
                      //           //border: InputBorder.none,
                      //           enabledBorder: OutlineInputBorder(
                      //               borderRadius: BorderRadius.circular(15),
                      //               borderSide: const BorderSide(
                      //                 color: Colors.black12,
                      //                 width: 1.0,
                      //               )))),
                      // ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(46, 46, 47, 1),
                            border: const Border(right: BorderSide.none),
                            borderRadius: BorderRadius.circular(11)),
                        margin:
                            const EdgeInsets.only(top: 0, left: 20, right: 20),
                        width: 850,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 290,
                                child: TextFormField(
                                    readOnly: true,
                                    controller: MyController6,
                                    maxLines: 1,
                                    //minLines: 10,
                                    style: const TextStyle(
                                        color: Color.fromRGBO(208, 208, 208, 1),
                                        fontWeight: FontWeight.w300,
                                        fontSize: 12),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      suffixIcon: Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        padding: const EdgeInsets.only(
                                            top: 15, bottom: 15, left: 80),
                                        child: Image.asset(
                                          "lib/Icons/line.png",
                                          height: 10,
                                          color: const Color.fromRGBO(
                                              97, 97, 97, 1),
                                        ),
                                      ),
                                      //border: InputBorder.none,
                                      //focusedBorder: InputBorder.none,
                                      //enabledBorder: InputBorder.none,
                                      //errorBorder: InputBorder.none,
                                      //disabledBorder: InputBorder.none,
                                      //border: InputBorder.none,
                                      fillColor: Colors.transparent,
                                      filled: false,
                                      hintText: "$revenue SAR",
                                      hintStyle: const TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Color.fromRGBO(208, 208, 208, 1),
                                      ),
                                      contentPadding: const EdgeInsets.only(
                                          left: 26, top: 18),
                                      //prefixIcon: const Icon(Icons.email),
                                      //icon: const Icon(Icons.man_rounded),
                                      // enabledBorder: const OutlineInputBorder(
                                      //     borderRadius: BorderRadius.only(
                                      //         topLeft: Radius.circular(15),
                                      //         bottomLeft: Radius.circular(15)),
                                      //     borderSide: BorderSide(
                                      //       color: Colors.black12,
                                      //       width: 1.0,
                                      //     )
                                      //     )
                                    ))),
                            Container(
                              //margin: const EdgeInsets.only(),
                              padding: const EdgeInsets.only(right: 5),

                              //width: MediaQuery.of(context).size.width,
                              //padding: const EdgeInsets.only(left: 100),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  icon: Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      margin: const EdgeInsets.only(left: 0),
                                      child: const Icon(
                                        FontAwesomeIcons.chevronDown,
                                        size: 12,
                                      )),
                                  value: selectedval2 ?? itemlist2[0],
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedval2 = newValue;
                                    });
                                  },
                                  items: itemlist2
                                      .map<DropdownMenuItem<String>>(
                                          (item) => DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        97, 97, 97, 1),
                                                  ),
                                                ),
                                              ))
                                      .toList(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      (selectedval == "New Auction")
                          ? Container()
                          : Column(
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    margin: const EdgeInsets.only(
                                        left: 22, top: 22),
                                    child: const Text(
                                      "Start Time",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: //Colors.white
                                              Color(0xffADB3BC)),
                                    )),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(46, 46, 47, 1),
                                      border:
                                          const Border(right: BorderSide.none),
                                      borderRadius: BorderRadius.circular(11)),
                                  margin: const EdgeInsets.only(
                                      top: 0, left: 20, right: 20),
                                  width: 850,
                                  height: 50,
                                  child: Row(children: [
                                    Expanded(
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: TextFormField(
                                          readOnly: true,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                          controller: MyController7,
                                          onTap: () {
                                            //_selectTime();
                                            _selectStartDate();
                                            // print(formattedDate);
                                            // print(formattedTime);
                                            // //_selectStartTime();

                                            //MyController7.text = formattedDate.toString();
                                            //dateTimeController.text = formattedTime.toString();

                                            //MyController7.text = formattedTime.toString();
                                          },
                                          //readOnly: true,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              //border: InputBorder.none,
                                              hintText: "Select Date & Time",
                                              hintStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      129, 180, 173, 173),
                                                  fontSize: 12)),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                Container(
                                    alignment: Alignment.centerLeft,
                                    margin: const EdgeInsets.only(
                                        left: 22, top: 22),
                                    child: const Text(
                                      "End Time",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: //Colors.white
                                              Color.fromRGBO(173, 179, 188, 1)),
                                    )),
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(46, 46, 47, 1),
                                      border:
                                          const Border(right: BorderSide.none),
                                      borderRadius: BorderRadius.circular(11)),
                                  margin: const EdgeInsets.only(
                                      top: 0, left: 20, right: 20),
                                  width: 850,
                                  height: 50,
                                  child: Row(children: [
                                    Expanded(
                                      child: Container(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: TextFormField(
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                          controller: endDateController,
                                          onTap: () {
                                            //_selectTime();
                                            _selectEndTimeDate();
                                            //MyController7.text = formattedTime.toString();
                                          },
                                          readOnly: true,
                                          decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              //border: InputBorder.none,
                                              hintText: "Select Date & Time",
                                              hintStyle: TextStyle(
                                                  color: Color.fromARGB(
                                                      129, 180, 173, 173),
                                                  fontSize: 12)),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              margin: const EdgeInsets.only(left: 22, top: 22),
                              child: const Text(
                                "Buy Now",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromRGBO(173, 179, 188, 1)),
                              )),
                          Container(
                            padding: const EdgeInsets.only(right: 15, top: 5),
                            //margin: const EdgeInsets.only(right: 60),
                            //width: 20, //SizedBox
                            /** Checkbox Widget **/
                            child: CustomCheckBox(
                              value: _value,
                              shouldShowBorder: true,
                              borderColor: Colors.black12,
                              //checkedFillColor: Colors.black12,
                              //splashColor: Colors.black12,
                              uncheckedIconColor: Colors.white,
                              checkedFillColor: Colors.white,
                              checkedIconColor: Colors.black,
                              borderRadius: 8,
                              borderWidth: 1,
                              checkBoxSize: 22,
                              onChanged: (value) {
                                //do your stuff here
                                setState(() {
                                  _value = !_value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                      (_value != true)
                          ? Container()
                          : Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(46, 46, 47, 1),
                                  border: const Border(right: BorderSide.none),
                                  borderRadius: BorderRadius.circular(11)),
                              margin: const EdgeInsets.only(
                                  top: 30, left: 20, right: 20),
                              width: 850,
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 290,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(11)),
                                      child: TextFormField(
                                          onChanged: (value) {
                                            Commision();
                                            value = result.toString();
                                            value = revenue.toString();
                                            print(num1);
                                            //num1 = double.parse(MyController3.text);
                                            // reuslt = num1! * 1 / 10;
                                            // reuslt = value as double;
                                          },
                                          controller: MyController4,
                                          maxLines: 1,
                                          readOnly: true,
                                          //minLines: 10,
                                          style: const TextStyle(
                                              color: Color.fromRGBO(
                                                  208, 208, 208, 1),
                                              fontWeight: FontWeight.w300,
                                              fontSize: 15),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                            suffixIcon: Container(
                                              margin: const EdgeInsets.only(
                                                  right: 10),
                                              padding: const EdgeInsets.only(
                                                  top: 15,
                                                  bottom: 15,
                                                  left: 80),
                                              child: Image.asset(
                                                "lib/Icons/line.png",
                                                height: 10,
                                                color: const Color.fromRGBO(
                                                    97, 97, 97, 1),
                                              ),
                                            ),
                                            //border: InputBorder.none,
                                            //focusedBorder: InputBorder.none,
                                            //enabledBorder: InputBorder.none,
                                            //errorBorder: InputBorder.none,
                                            //disabledBorder: InputBorder.none,
                                            //border: InputBorder.none,
                                            fillColor: Colors.transparent,
                                            filled: false,
                                            hintText: "100 SAR",
                                            hintStyle: const TextStyle(
                                                color: Color(0xff616161),
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12),
                                            contentPadding:
                                                const EdgeInsets.only(
                                                    top: 15, left: 24),
                                            //prefixIcon: const Icon(Icons.email),
                                            //icon: const Icon(Icons.man_rounded),
                                            // enabledBorder: const OutlineInputBorder(
                                            //     borderRadius: BorderRadius.only(
                                            //         topLeft: Radius.circular(15),
                                            //         bottomLeft: Radius.circular(15)),
                                            //     borderSide: BorderSide(
                                            //       color: Colors.black12,
                                            //       width: 1.0,
                                            //     )
                                            //
                                            //   )
                                          ))),
                                  Container(
                                    //margin: const EdgeInsets.only(),
                                    padding: const EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(1),
                                    ),

                                    //width: MediaQuery.of(context).size.width,
                                    //padding: const EdgeInsets.only(left: 100),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        icon: Container(
                                            padding:
                                                const EdgeInsets.only(left: 10),
                                            margin:
                                                const EdgeInsets.only(left: 0),
                                            child: const Icon(
                                              FontAwesomeIcons.chevronDown,
                                              size: 12,
                                            )),
                                        value: selectedval2 ?? itemlist2[0],
                                        //?? itemlist2[0],
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            selectedval2 = newValue;
                                          });
                                        },
                                        items: itemlist2
                                            .map<DropdownMenuItem<String>>(
                                                (item) =>
                                                    DropdownMenuItem<String>(
                                                      value: item,
                                                      child: Text(
                                                        item,
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Color.fromRGBO(
                                                              97, 97, 97, 1),
                                                        ),
                                                      ),
                                                    ))
                                            .toList(),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                      Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(46, 46, 47, 1),
                          ),
                          child: DropdownButtonFormField<String>(
                            icon: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: const Icon(
                                FontAwesomeIcons.chevronDown,
                                size: 12,
                              ),
                            ),
                            dropdownColor: const Color(0xff616161),
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 20),
                                hintText: "Select Item",
                                hintStyle: TextStyle(
                                    color: Color(0xff616161), fontSize: 12)),
                            value: selectedval,
                            items: itemslist
                                .map((label) => DropdownMenuItem(
                                      value: label,
                                      child: Text(label),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() => selectedval = value);
                            },
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (() {}),
                            child: GestureDetector(
                              onTap: () {
                                print(MyController1.text);
                                print(MyController2.text);
                                print(MyController3.text);
                                print(MyController4.text);
                                print(MyController5.text);
                                print(MyController7.text);
                                print(dateTimeController.text);
                                print(selectedval);
                                print(
                                    "Image List Length:${imageFileList!.length}");
                              },
                              child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 15,
                                      bottom: 15,
                                      right: 125,
                                      left: 125),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  margin: const EdgeInsets.only(
                                      top: 58, bottom: 49),
                                  child: const Text(
                                    "List My Lot",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

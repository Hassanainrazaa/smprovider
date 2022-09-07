import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GridViewGallery extends StatefulWidget {
  const GridViewGallery({Key? key}) : super(key: key);

  @override
  State<GridViewGallery> createState() => _GridViewGalleryState();
}

class _GridViewGalleryState extends State<GridViewGallery> {
  final List<XFile> _imagelist = [];

  final ImagePicker picker = ImagePicker();
  //final ImageCam = picker.pickImage(source: ImageSource.camera);

  Future getImageCamera() async {
    final ImagePicker picker = ImagePicker();
    final ImageCam = await picker.pickImage(source: ImageSource.camera);
    final imagefile = XFile(ImageCam!.path);
    //print(imagefile);
    if (ImageCam.path.isNotEmpty) {
      _imagelist.add(imagefile);
    }
    setState(() {});
    //imagefile = File(ImageCam!.path);
  }

  Future getImageGallery() async {
    final ImagePicker picker = ImagePicker();
    final ImageCam = await picker.pickImage(source: ImageSource.camera);
    //File file = File(ImageCam!.path);
    //print(imagefile);
    if (ImageCam!.path.isNotEmpty) {
      _imagelist.add(ImageCam);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          OutlinedButton(
            onPressed: () {
              getImageCamera();
            },
            child: const Text("Add Images"),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: _imagelist.length,
                itemBuilder: (BuildContext context, index) {
                  return Image.file(File(_imagelist[index].path));
                }),
          )
        ],
      )),
    );
  }
}

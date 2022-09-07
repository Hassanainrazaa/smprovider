import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker2 extends StatefulWidget {
  const ImagePicker2({Key? key}) : super(key: key);

  @override
  State<ImagePicker2> createState() => _ImagePicker2State();
}

class _ImagePicker2State extends State<ImagePicker2> {
  XFile? _image;
  File? imagefile;

  Future getImageCamera() async {
    final ImagePicker picker = ImagePicker();
    final ImageCam = await picker.pickImage(source: ImageSource.camera);
    print(imagefile);
    setState(() {
      imagefile = File(ImageCam!.path);
      _image = ImageCam;
    });
    //imagefile = File(ImageCam!.path);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: imagefile == null
                    ? const Text("Image not selected")
                    : Image.file(
                        imagefile as File,
                        width: 50,
                        height: 50,
                      ),
              ),
              (imagefile != null)
                  ? Container()
                  : GestureDetector(
                      onTap: () {
                        imagefile == null;
                        getImageGallery();
                      },
                      child: const Icon(Icons.add),
                    ),
              (imagefile != null)
                  ? Image.file(
                      imagefile as File,
                      width: 10,
                      height: 10,
                    )
                  : Container(),
              //const Text("data")
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImageGallery();
          getImageCamera();
        },
        child: const Icon(Icons.browse_gallery),
      ),
    );
  }
}

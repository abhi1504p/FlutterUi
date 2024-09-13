import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagesPicker extends StatefulWidget {
  const ImagesPicker({super.key});

  @override
  State<ImagesPicker> createState() => _ImagesPickerState();
}

class _ImagesPickerState extends State<ImagesPicker> {
  XFile? file;
  ImagePicker _picker = ImagePicker();
  List<XFile>? files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text("Image_picker")),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.grey.shade600,
              height: 300,
              width: double.infinity,
              child: Center(
                  child: file == null
                      ? Text("Image not Picked")
                      : Image.file(
                          File(file!.path),
                          fit: BoxFit.cover,
                        )),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final XFile? photo =
                  await _picker.pickImage(source: ImageSource.gallery);
              setState(() {
                file = photo;
              });
            },
            child: Text("Pick_Image"),
          ),
          ElevatedButton(
            onPressed: () async {
              final List<XFile> photos=await _picker.pickMultiImage();
              setState(() {
                files = photos;
              });
              print("images_picked");
              for(int i=0;i<files!.length;i++){
                print(files![i].path);
              }
            },
            child: const Text("Pick_Images"),
          )
        ],
      ),
    );
  }
}

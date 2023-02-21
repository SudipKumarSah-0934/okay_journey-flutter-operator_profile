import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:operator_profile/resources/color_manager.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});
  @override
  CameraPageState createState() => CameraPageState();
}

class CameraPageState extends State<CameraPage> {
  List<CameraDescription>? cameras;
  CameraController? controller;
  XFile? image;

  @override
  void initState() {
    loadCamera();
    super.initState();
  }

  loadCamera() async {
    cameras = await availableCameras();
    if (cameras != null) {
      controller = CameraController(cameras![0], ResolutionPreset.max);

      controller!.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    } else {
      print("NO any camera found");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: ColorManager.primaryOpacity70,width: 2,style: BorderStyle.solid)
                ),
                  height: MediaQuery.of(context).size.height/3,
                  width: double.infinity,
                  child: controller == null ?
                  Center(child: Text("Loading Camera...")) :
                  !controller!.value.isInitialized ?
                  Center(
                    child: CircularProgressIndicator(),
                  ) :
                  CameraPreview(controller!)
              ),
            ),

            ElevatedButton.icon(
              onPressed: () async {
                try {
                  if (controller != null) {
                    if (controller!.value
                        .isInitialized) {
                      image =
                      await controller!.takePicture();
                      setState(() {
                      });
                    }
                  }
                } catch (e) {
                  print(e); //show error
                }
              },
              icon: Icon(Icons.camera_alt),
              label: Text("Capture"),
            ),

            Container(
              padding: EdgeInsets.all(8),
              child: image == null ?
              Text("No image captured") :
              Image.file(File(image!.path),width: double.maxFinite, height: MediaQuery.of(context).size.height/2.5,),
            )
          ]
      ),

    );
  }
}
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import 'CameraPage.dart';
import 'HomePage.dart';
import 'ProfilePage.dart';
import 'StatusPage.dart';
class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}
Future<void> openCamera() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;


}

class _LandingPageState extends State<LandingPage> {
  List pages=[
    HomePage(),
    CameraPage(),
    StatusPage(),
    ProfilePage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          child: BottomNavigationBar(
            onTap: onTap,
            currentIndex: currentIndex,
            selectedItemColor: Colors.white54,
            unselectedItemColor: Colors.white24,
            type: BottomNavigationBarType.fixed,
            elevation: 5,
            backgroundColor: ColorManager.primaryOpacity70,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/ic_home.png"),
                  size: 21,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/ic_task.png"),
                  size: 21,
                ),
                label: 'Task',

              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/ic_status.png"),
                  size: 21,
                ),
                label: 'Status',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/ic_profile_icon.png"),
                  size: 21,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
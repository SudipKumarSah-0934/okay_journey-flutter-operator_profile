import 'package:flutter/material.dart';
import 'package:operator_profile/resources/styles_manager.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text("Profile",style: getBoldStyle(color: Colors.black),));
  }
}

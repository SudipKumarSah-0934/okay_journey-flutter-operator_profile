import 'package:flutter/material.dart';
import 'package:operator_profile/resources/styles_manager.dart';
class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Text("Status",style: getBoldStyle(color: Colors.black),));
  }
}

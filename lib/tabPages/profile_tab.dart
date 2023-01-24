import 'package:flutter/material.dart';

class ProfileTabHome extends StatefulWidget {
  const ProfileTabHome({Key? key}) : super(key: key);

  @override
  State<ProfileTabHome> createState() => _ProfileTabHomeState();
}

class _ProfileTabHomeState extends State<ProfileTabHome> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile"),
    );;
  }
}

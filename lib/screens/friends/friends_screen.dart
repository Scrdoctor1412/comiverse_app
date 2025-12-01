import 'package:comiverse_app/screens/friends/friends_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FriendsScreen extends GetView<FriendsScreenViewmodel> {
  static const String routeName = "/friends";
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Friends Screen"),
      ),
    );
  }
}

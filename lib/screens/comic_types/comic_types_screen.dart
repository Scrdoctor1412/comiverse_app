import 'package:comiverse_app/screens/comic_types/comic_types_screen_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComicTypesScreen extends GetView<ComicTypesScreenViewmodel> {
  static const String routeName = "/comicTypes";
  const ComicTypesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Comic Types Screen"),
      ),
    );
  }
}

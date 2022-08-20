import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar appBar({required String title, required openDrawer}) {
  return AppBar(
    title: Text(title),
    leading: IconButton(
      icon: SvgPicture.asset("assets/icon.svg"),
      onPressed: openDrawer,
    ),
    backgroundColor: Colors.white,
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_alert),
        ),
      ),
    ],
  );
}

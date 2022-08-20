import 'package:flutter/material.dart';
import 'package:jr_notes/widgets/app_bar.dart';
import '../widgets/drawer.dart';

class DetailsAdd extends StatelessWidget {
  const DetailsAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldDetails,
      appBar: appBar(
        title: "Add Details",
        openDrawer: openDrawerDetails,
      ),
      drawer: drawer(context),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jr_notes/widgets/app_bar.dart';
import 'package:jr_notes/widgets/bullets.dart';
import '../widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldDashboard,
      appBar: appBar(
        title: "Dashboard",
        openDrawer: openDrawerDashboard,
      ),
      drawer: drawer(context),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: 600,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 2,
              color: Colors.black,
            ),
            Column(
              children: const [
                BulletPointCard(),
                BulletPointCard(),
                BulletPointCard(),
                BulletPointCard(),
                BulletPointCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

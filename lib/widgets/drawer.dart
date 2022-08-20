import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldDashboard = GlobalKey<ScaffoldState>();
final GlobalKey<ScaffoldState> scaffoldDetails = GlobalKey<ScaffoldState>();

void openDrawerDashboard() {
  scaffoldDashboard.currentState!.openDrawer();
}

void openDrawerDetails() {
  scaffoldDetails.currentState!.openDrawer();
}

drawer(context) {
  return Padding(
    padding: EdgeInsets.only(
      right: MediaQuery.of(context).size.width == 0 ? 0 : 60,
    ),
    child: Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffFFDC82),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.keyboard_backspace),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  const ListTile(
                    leading: FittedBox(
                      child: CircleAvatar(
                        minRadius: 20,
                        maxRadius: 40,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    title: Text("@UserName"),
                    subtitle: Text("example@gmail.com"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: drawerBody(),
          ),
        ],
      ),
    ),
  );
}

drawerBody() {
  return Column(
    children: [
      Expanded(
        child: Column(
          children: [
            container(
              icon: Icons.dashboard,
              title: "Dashboard",
            ),
            container(
              icon: Icons.bookmark,
              title: "Highlights",
            ),
            container(
              icon: Icons.manage_accounts,
              title: "Account Setting",
            ),
            container(
              icon: Icons.people,
              title: "About Us",
            ),
            container(
              icon: Icons.contact_phone,
              title: "Contact Us",
            ),
          ],
        ),
      ),
      Expanded(
        flex: 0,
        child: Column(
          children: [
            container(
              icon: Icons.logout,
              title: "Log Out",
            ),
            container(
              icon: Icons.settings,
              title: "Setting",
            ),
          ],
        ),
      ),
    ],
  );
}

container({required IconData icon, required String title}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Icon(icon),
        ),
        Expanded(
          flex: 2,
          child: Text(title),
        ),
      ],
    ),
  );
}

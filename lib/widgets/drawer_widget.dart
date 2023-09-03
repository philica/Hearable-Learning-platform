import 'package:flutter/material.dart';

var currentPage = DrawerSections.dashboard;
Widget MyDrawerList() {
  return Container(
    padding: EdgeInsets.only(
      top: 15,
    ),
    child: Column(
      // shows the list of menu drawer
      children: [
        menuItem(1, "Home", Icons.home,
            currentPage == DrawerSections.dashboard ? true : false),
        menuItem(2, "Courses", Icons.school,
            currentPage == DrawerSections.contacts ? true : false),
        menuItem(3, "My Courses", Icons.library_add,
            currentPage == DrawerSections.events ? true : false),
        menuItem(4, "Notifications", Icons.notifications,
            currentPage == DrawerSections.notes ? true : false),
        Divider(),
        menuItem(5, "Profile", Icons.account_circle,
            currentPage == DrawerSections.settings ? true : false),
        menuItem(6, "Help/Support", Icons.help,
            currentPage == DrawerSections.notifications ? true : false),
        Divider(),
        menuItem(7, "Privacy policy", Icons.privacy_tip,
            currentPage == DrawerSections.privacy_policy ? true : false),
        menuItem(8, "Send feedback", Icons.feedback,
            currentPage == DrawerSections.send_feedback ? true : false),
      ],
    ),
  );
}

Widget menuItem(int id, String title, IconData icon, bool selected) {
  return Material(
    color: selected ? Colors.grey[300] : Colors.transparent,
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}

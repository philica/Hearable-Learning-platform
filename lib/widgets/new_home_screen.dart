import 'dart:ui';

import 'package:flutter/material.dart';
import './color.dart';
import './category_model.dart';
import './plant_data.dart';
import './details_page.dart';
import './featured_course_widget.dart';
import './drawer_widget.dart';
import './header_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController();
  @override
  void initState() {
    controller = PageController(viewportFraction: 0.6, initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        title: Text('Hearable'),
        backgroundColor: Color.fromRGBO(5, 10, 48, 1),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45.0,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: white,
                        border: Border.all(color: Color.fromRGBO(5, 10, 48, 1)),
                        boxShadow: [
                          BoxShadow(
                            color:
                                Color.fromRGBO(5, 10, 48, 1).withOpacity(0.15),
                            blurRadius: 10,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 45.0,
                    width: 45.0,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(5, 10, 48, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(5, 10, 48, 1).withOpacity(0.5),
                          blurRadius: 10,
                          offset: const Offset(0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/search.png',
                        color: white,
                        height: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int i = 0; i < categories.length; i++)
                    GestureDetector(
                      onTap: () {
                        setState(() => selectId = categories[i].id);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            categories[i].name,
                            style: TextStyle(
                              color: selectId == i
                                  ? Color.fromRGBO(5, 10, 48, 1)
                                  : white.withOpacity(0.7),
                              fontSize: 16.0,
                            ),
                          ),
                          if (selectId == i)
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: Color.fromRGBO(5, 10, 48, 1),
                            )
                        ],
                      ),
                    )
                ],
              ),
            ),
            SizedBox(
              height: 320.0,
              child: PageView.builder(
                itemCount: plants.length,
                controller: controller,
                physics: const BouncingScrollPhysics(),
                padEnds: false,
                pageSnapping: true,
                onPageChanged: (value) => setState(() => activePage = value),
                itemBuilder: (itemBuilder, index) {
                  bool active = index == activePage;
                  return slider(active, index);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                      color: black.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 60),
                  Image.asset(
                    'assets/images/more.png',
                    color: Color.fromRGBO(5, 10, 48, 1),
                    height: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130.0,
              child: ListView.builder(
                itemCount: populerPlants.length,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(left: 20.0),
                scrollDirection: Axis.horizontal,
                itemBuilder: (itemBuilder, index) {
                  return Container(
                    width: 200.0,
                    margin: const EdgeInsets.only(right: 20, bottom: 10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(5, 10, 48, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(5, 10, 48, 1).withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              populerPlants[index].imagePath,
                              width: 70,
                              height: 70,
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  populerPlants[index].name,
                                  style: TextStyle(
                                    color: white.withOpacity(0.7),
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  '\$${populerPlants[index].price.toStringAsFixed(0)}',
                                  style: TextStyle(
                                    color: white.withOpacity(0.4),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                          right: 20,
                          bottom: 20,
                          child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(14, 46, 255, 1),
                            radius: 15,
                            child: Image.asset(
                              'assets/images/add.png',
                              color: white,
                              height: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                "Featured Courses",
                style: TextStyle(
                  fontSize: 24.0, // Adjust the font size as needed
                  fontWeight:
                      FontWeight.bold, // Adjust the font weight as needed
                  color: Color.fromRGBO(
                      5, 10, 48, 1), // Adjust the text color as needed
                ),
              ),
            ),
            FeaturedCourseWidget(
              imagePath: 'assets/images/course1.jpg',
              courseTitle: 'Web Development',
              courseDescription:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac ultricies massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed euismod laoreet massa, vel facilisis justo tincidunt sit amet.",
              rating: 4.5,
              onPressed: () {
                // Implement the action you want to perform when the button is pressed.
                // This can be navigation to the course details page or any other action.
              },
            ),
            FeaturedCourseWidget(
              imagePath: 'assets/images/course2.jpg',
              courseTitle: 'Graphics Design',
              courseDescription:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac ultricies massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed euismod laoreet massa, vel facilisis justo tincidunt sit amet.",
              rating: 3.5,
              onPressed: () {
                // Implement the action you want to perform when the button is pressed.
                // This can be navigation to the course details page or any other action.
              },
            ),
            FeaturedCourseWidget(
              imagePath: 'assets/images/course3.jpg',
              courseTitle: 'English Course',
              courseDescription:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac ultricies massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed euismod laoreet massa, vel facilisis justo tincidunt sit amet.",
              rating: 4.3,
              onPressed: () {
                // Implement the action you want to perform when the button is pressed.
                // This can be navigation to the course details page or any other action.
              },
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer slider(active, index) {
    double margin = active ? 20 : 30;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      child: mainPlantsCard(index),
    );
  }

  Widget mainPlantsCard(index) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (builder) => DetailsPage(plant: plants[index]),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: white.withOpacity(0.05),
              blurRadius: 15,
              offset: const Offset(5, 5),
            ),
          ],
          border: Border.all(color: Color.fromRGBO(5, 10, 48, 1), width: 2),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(5, 10, 48, 1),
                boxShadow: [
                  BoxShadow(
                    color: white.withOpacity(0.05),
                    blurRadius: 15,
                    offset: const Offset(5, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(25.0),
                image: DecorationImage(
                  image: AssetImage(plants[index].imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 8,
              top: 8,
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(5, 10, 48, 1),
                radius: 15,
                child: Image.asset(
                  'assets/images/add.png',
                  color: white,
                  height: 15,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  '${plants[index].name} - \$${plants[index].price.toStringAsFixed(0)}',
                  style: TextStyle(
                    color: black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int selectId = 0;
  int activePage = 0;
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(5, 10, 48, 1),
            ),
            child: Text(
              'App Drawer',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Second Page'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ],
      ),
    );
  }
}

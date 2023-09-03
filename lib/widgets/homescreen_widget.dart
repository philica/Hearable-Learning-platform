// import 'package:flutter/material.dart';
// import './catagories_widget.dart';
// import './featured_course_widget.dart';
// import './custom_button.dart';
// import './popular_categories.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Hearable'),
//         backgroundColor: Color.fromARGB(150, 204, 67, 9),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//               child: Text(
//                 'Navigation',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               title: Text('Home'),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//                 // You are already on the home screen, no need to navigate again.
//               },
//             ),
//             ListTile(
//               title: Text('Categories'),
//               onTap: () {
//                 Navigator.pop(context); // Close the drawer
//                 // Navigate to the categories screen
//                 // You should define a '/categories' route in your MaterialApp's routes.
//                 // Example: Navigator.pushNamed(context, '/categories');
//               },
//             ),
//             // Add more navigation items here
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               color: Color.fromARGB(
//                   0, 33, 149, 243), // Customize the color as needed
//               height: 240, // Adjust the height of the container
//               child: Center(
//                 child: Image.asset(
//                   'assets/images/hero.png', // Replace with your image path
//                   fit: BoxFit.cover, // Cover the entire container
//                 ),
//               ),
//             ),
//             Container(
//               color: Colors.green, // Customize the color as needed
//               height: 150, // Adjust the height of the search container
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'A2SV Hackathon',
//                     style: TextStyle(
//                       color: Color.fromARGB(255, 6, 10, 129), // Text color
//                       fontSize: 36, // Text size
//                     ),
//                   ),
//                   SizedBox(
//                     height:
//                         20, // Add spacing between the title and search field
//                   ),
//                   Container(
//                     margin: EdgeInsets.symmetric(horizontal: 20),
//                     padding: EdgeInsets.symmetric(horizontal: 10),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: TextField(
//                             decoration: InputDecoration(
//                               hintText: 'Search for Course...',
//                               border: InputBorder.none,
//                             ),
//                           ),
//                         ),
//                         IconButton(
//                           icon: Icon(
//                             Icons.search,
//                           ),
//                           onPressed: () {
//                             // Add your search functionality here
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             CategoriesWidget(), // Include the CategoriesWidget here
//             PopularCategories(),
//             SizedBox(height: 50),
//             Text(
//               "Featured Courses",
//               style: TextStyle(
//                 fontSize: 24.0, // Adjust the font size as needed
//                 fontWeight: FontWeight.bold, // Adjust the font weight as needed
//                 color: Colors.blue, // Adjust the text color as needed
//               ),
//             ),
//             FeaturedCourseWidget(
//               imageUrl: 'https://example.com/course-image.jpg',
//               courseTitle: 'Flutter Development Course',
//               courseDescription:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac ultricies massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed euismod laoreet massa, vel facilisis justo tincidunt sit amet.",
//               rating: 4.5,
//               onPressed: () {
//                 // Implement the action you want to perform when the button is pressed.
//                 // This can be navigation to the course details page or any other action.
//               },
//             ),
//             FeaturedCourseWidget(
//               imageUrl: 'https://example.com/course-image.jpg',
//               courseTitle: 'Flutter Development Course',
//               courseDescription:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac ultricies massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed euismod laoreet massa, vel facilisis justo tincidunt sit amet.",
//               rating: 3.5,
//               onPressed: () {
//                 // Implement the action you want to perform when the button is pressed.
//                 // This can be navigation to the course details page or any other action.
//               },
//             ),
//             FeaturedCourseWidget(
//               imageUrl: 'https://example.com/course-image.jpg',
//               courseTitle: 'Flutter Development Course',
//               courseDescription:
//                   "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac ultricies massa. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed euismod laoreet massa, vel facilisis justo tincidunt sit amet.",
//               rating: 4.3,
//               onPressed: () {
//                 // Implement the action you want to perform when the button is pressed.
//                 // This can be navigation to the course details page or any other action.
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

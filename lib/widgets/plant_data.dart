import './plant_model.dart';

List<Plants> plants = [
  Plants(
    id: 0,
    name: 'Programming',
    imagePath: 'assets/images/image1.jpg',
    category: 'Computer Science',
    description:
        'Learn the fundamentals of programming and coding in this beginner-friendly course. ',
    price: 49.99,
    isFavorit: false,
  ),
  Plants(
    id: 1,
    name: 'Digital Marketing',
    imagePath: 'assets/images/image2.jpg',
    category: 'Marketing',
    description:
        'Master the art of digital marketing, including SEO, social media, and email marketing. ',
    price: 59.99,
    isFavorit: false,
  ),
  Plants(
    id: 2,
    name: 'Graphic Design',
    imagePath: 'assets/images/image3.jpg',
    category: 'Design',
    description:
        'Unlock your creative potential with this course on graphic design basics.',
    price: 39.99,
    isFavorit: false,
  ),
  Plants(
    id: 3,
    name: 'Financial Planning',
    imagePath: 'assets/images/image5.jpg',
    category: 'Finance',
    description:
        '"Get your finances in order and plan for a secure future with this comprehensive course. ',
    price: 69.99,
    isFavorit: true,
  ),
];

List<Plants> populerPlants = [
  Plants(
    id: 0,
    name: 'Photography',
    imagePath: 'assets/images/01.png',
    category: 'Photography',
    description:
        'Become a pro photographer with this in-depth masterclass covering all aspects of photography.',
    price: 75.00,
    isFavorit: false,
  ),
  Plants(
    id: 1,
    name: 'Yoga for Beginner',
    imagePath: 'assets/images/02.png',
    category: 'Health & Wellness',
    description:
        'Start your journey to a healthier lifestyle with these beginner-level yoga classes ',
    price: 29.99,
    isFavorit: false,
  ),
  Plants(
    id: 2,
    name: 'Data Science',
    imagePath: 'assets/images/03.png',
    category: 'Data Science',
    description:
        'Start your data science journey by learning the basics of data analysis and visualization.',
    price: 54.99,
    isFavorit: false,
  ),
];

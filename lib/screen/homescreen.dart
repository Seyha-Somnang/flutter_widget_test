import 'package:flutter/material.dart';

class AppTheme {
  static final primaryColor = Color.fromARGB(255, 43, 43, 150);
  static const warningColors = Colors.amber;
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required String title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody);
  }

  get _buildBody => Column(
    children: [
      SizedBox(height: 68),
      Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 400,
            // padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            width: double.infinity,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppTheme.primaryColor,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 20,
              children: [
                Column(
                  children: [
                    Text(
                      "Somnang Seyha",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Sophomore",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white.withAlpha(150),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                _buildScrollFeature,
                _bottomApp,
              ],
            ),
          ),
          Positioned(
            top: -40,
            child: Container(
              height: 88,
              width: 88,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.warningColors,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 5),
              ),
            ),
          ),
        ],
      ),
    ],
  );

  final featureLists = [
    "Academic Success",
    "Learning Resources",
    "Health & Fitness",
    "Career Development",
    "Community Engagement",
    "Innovation & Creativity",
    "Personal Growth",
  ];

  final featureIcons = [
    Icons.school,
    Icons.menu_book,
    Icons.fitness_center,
    Icons.work,
    Icons.groups,
    Icons.lightbulb,
    Icons.self_improvement,
  ];

  final featureColors = [
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.red,
    Colors.teal,
    Colors.indigo,
  ];

  get _buildScrollFeature => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(
        featureLists.length,
        (index) => Container(
          margin: EdgeInsets.only(left: 10),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              spacing: 6,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: featureColors[index],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(featureIcons[index], color: Colors.white),
                ),
                Text(
                  featureLists[index],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );

  get _bottomApp => Container(
    height: 120,
    padding: EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 3, 3, 55),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      children: List.generate(
        3,
        (index) => Expanded(
          child: Container(
            height: 80,
            width: 80,
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(30),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "A -",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Letter grade",
                  style: TextStyle(
                    color: Colors.white.withAlpha(90),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

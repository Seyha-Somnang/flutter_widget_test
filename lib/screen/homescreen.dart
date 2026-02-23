import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List datas = ["Cat", "Dog", "Cow", "Buffolo", "Eagle"];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Breakfast",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SvgPicture.asset('assets/icons/left_btn.svg'),
        ),
      ),

      // body: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Row(
      //     children: [
      //       Column(
      //         children: [
      //           Expanded(child: FlutterLogo(size: 150)),
      //           Text('data'),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           Expanded(child: FlutterLogo(size: 150)),
      //           Text('data'),
      //         ],
      //       ),
      //       Column(
      //         children: [
      //           Expanded(child: FlutterLogo(size: 150)),
      //           Text('data'),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: index % 2 == 1 ? Colors.blueAccent : Colors.blueGrey,
            ),
            child: Text(
              datas[index],
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}

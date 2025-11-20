import 'package:flutter/material.dart';

class MediaQueryView extends StatelessWidget {
  const MediaQueryView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: size.width <= 500 ? AppBar(backgroundColor: Colors.blue) : null,
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  color: Colors.red,
                  child: Column(
                    children: [
                      Text('layout width : ${constraints.maxWidth}'),
                      Text('media query width : ${size.width}'),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  child: Column(
                    children: [
                      Text('layout width : ${constraints.maxWidth}'),
                      Text('media query width : ${size.width}'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



// الميديا كويرى بتشتغل على مستوى الصفحة كلها
// اللاى اوت بيلدر بتشتغل على مستوى التشيلد
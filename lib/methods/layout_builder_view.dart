import 'package:flutter/material.dart';

class LayoutBuilderView extends StatelessWidget {
  const LayoutBuilderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 500) {
            return Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
                child: Text('Welcome to phone'),
              ),
            );
          } else if (constraints.maxWidth <= 800) {
            return Center(
              child: Container(
                height: 500,
                width: 500,
                color: Colors.orange,
                child: Text('Welcome to tablet'),
              ),
            );
          } else {
            return Center(
              child: Container(
                height: 700,
                width: 700,
                color: Colors.blue,
                child: Text('Welcome to web'),
              ),
            );
          }
        },
      ),
    );
  }
}

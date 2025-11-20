import 'package:flutter/material.dart';
import 'package:responsive_ui_methods/utils/responsive_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileWidget: MobileContent(),
        tabletWidget: TabletContent(),
        webWidget: WebContent(),
      ),
    );
  }
}

class MobileContent extends StatelessWidget {
  const MobileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Center(child: Text('Mobile content')));
  }
}

class TabletContent extends StatelessWidget {
  const TabletContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Center(child: Text('Tablet content')));
  }
}

class WebContent extends StatelessWidget {
  const WebContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: Center(child: Text('Web content')));
  }
}

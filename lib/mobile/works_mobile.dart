import 'package:flutter/material.dart';

import '../component.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Container(
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/photo.png'),
                  ),
                ),
              ),
              TabsMobile(text: "Home", route: '/'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Works", route: '/works'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Blog", route: '/blog'),
              SizedBox(height: 20.0),
              TabsMobile(text: "About", route: '/about'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Contact", route: '/contact'),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Urllaunch(
                    svgPath: "assets/instagram.svg",
                    url: "https://www.instagram.com/?hl=fr",
                  ),
                  Urllaunch(
                    svgPath: 'assets/github.svg',
                    url: "https://github.com/Harley755",
                  ),
                  Urllaunch(
                    svgPath: 'assets/twitter.svg',
                    url: "https://twitter.com/bg_dev2",
                  ),
                ],
              ),
            ],
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/works.jpg",
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0),
                  SansBold("Works", 35.0),
                  SizedBox(height: 20.0),
                  AnimatedCardWeb(
                    imagePath: "assets/screenshot.jpeg",
                    fit: BoxFit.contain,
                    heigth: 150.0,
                    containerWidth: 300.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("Portfolio", 20.0),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                      "Deployed on Android, Ios, Web, the portfolio projet was truly an achievement I used Flutter the develop the beautiful and responsive UI and Firebase for the back-end.",
                      15.0,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  SansBold("Photoshop", 20.0),
                  SizedBox(height: 10.0),
                  AnimatedCardWeb(
                    imagePath: "assets/photoshop.jpg",
                    heigth: 150.0,
                    containerWidth: 300.0,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

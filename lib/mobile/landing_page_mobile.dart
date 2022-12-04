import 'package:flutter/material.dart';
import 'package:portfolio_web/component.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {



  @override
  Widget build(BuildContext context) {
    // var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(
          size: 35.0,
          color: Colors.black,
        ),
        title: const Text("My portfolio"),
      ),
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
                  backgroundImage: AssetImage('../../assets/photo.png'),
                ),
              ),
            ),
            TabsMobile(text: "Home", route: '/'),
            SizedBox(height: 20.0,),
            TabsMobile(text: "Works", route: '/works'),
            SizedBox(height: 20.0,),
            TabsMobile(text: "Blogs", route: '/blogs'),
            SizedBox(height: 20.0,),
            TabsMobile(text: "About", route: '/about'),
            SizedBox(height: 20.0,),
            TabsMobile(text: "Contact", route: '/contact'),
            SizedBox(height: 40.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Urllaunch(svgPath: "../../assets/instagram.svg", url: "https://www.instagram.com/?hl=fr"),
                Urllaunch(svgPath:"../../assets/github.svg", url: "https://github.com/Harley755"),
                Urllaunch(svgPath:"../../assets/twitter.svg", url: "https://twitter.com/bg_dev2"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
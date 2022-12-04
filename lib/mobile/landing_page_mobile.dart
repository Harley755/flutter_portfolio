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
      extendBodyBehindAppBar: true, // as App Bar
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
      body: ListView(
        children: [
          //  FIRST SECTION
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 117.0,
                    backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("../../assets/photo.png"),
                  ),
                ),
                SizedBox(height: 25.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        )
                      ),
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      child: SansBold("Hello I'm", 15.0),
                    ),
                    SansBold("Brice GOUDALO", 40),
                    SansBold("Flutter developer", 40),
                  ],
                ),
                SizedBox(height: 15.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(width: 40.0,),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans("bricegoudalo@gmail.com", 15.0),
                        Sans("+229 96203314", 15.0),
                        Sans("Houeyiho, Cotonou Bénin", 15.0)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 90.0,),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold("About me", 35.0)
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.tealAccent, style: BorderStyle.solid, width: 2.0),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true, // as App Bar
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(
            size: 35.0,
            color: Colors.black,
          ),
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
              SizedBox(height: 20.0),
              TabsMobile(text: "Works", route: '/works'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Blogs", route: '/blogs'),
              SizedBox(height: 20.0),
              TabsMobile(text: "About", route: '/about'),
              SizedBox(height: 20.0),
              TabsMobile(text: "Contact", route: '/contact'),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Urllaunch(
                    svgPath: "../../assets/instagram.svg",
                    url: "https://www.instagram.com/?hl=fr",
                  ),
                  Urllaunch(
                    svgPath: "../../assets/github.svg",
                    url: "https://github.com/Harley755",
                  ),
                  Urllaunch(
                    svgPath: "../../assets/twitter.svg",
                    url: "https://twitter.com/bg_dev2",
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("../../assets/photo.png"),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 35.0),
                    SizedBox(height: 10.0),
                    Sans(
                      "Hello! I'm Brice GOUDALO I specialize in flutter developement",
                      15.0,
                    ),
                    Sans(
                      "I strive to ensure astounding  performance with state of",
                      15.0,
                    ),
                    Sans(
                      "The art security for Android, Ios, Web, Mac, Linux",
                      15.0,
                    ),
                    SizedBox(height: 15.0),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        tealContainer("Flutter"),
                        tealContainer("Firebase"),
                        tealContainer("Android"),
                        tealContainer("Windows"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.0),

              // WEB DEVELOPMENT SECOND SECTION
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCardWeb(
                    imagePath: "../../assets/webL.png",
                    containerWidth: 200.0,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("Web development", 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              Sans(
                "I'm here to buid your presence online with state of the art web apps",
                15,
              ),

              // APP DEVELOPMENT THIRD SECTION
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCardWeb(
                    imagePath: "../../assets/app.png",
                    containerWidth: 200.0,
                    reverse: true,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("App development", 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              Sans(
                "Do you need a high-performance, responsive and beautiful app? Don't worry, I've got you covered.",
                15,
              ),

              // BACK-END DEVELOPMENT FOURTH SECTION
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCardWeb(
                    imagePath: "../../assets/firebase.png",
                    containerWidth: 200.0,
                    reverse: true,
                  ),
                  SizedBox(height: 30.0),
                  SansBold("Back-End development", 20.0),
                  SizedBox(height: 10.0),
                ],
              ),
              Sans(
                "Do you want your back-end to be highly scalable and secure ? Let's have a conversation on how can i help you with that.",
                15,
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

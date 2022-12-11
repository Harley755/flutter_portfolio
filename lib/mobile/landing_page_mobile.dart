import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/component.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
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
    var widthDevice = MediaQuery.of(context).size.width;
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
                  backgroundImage: AssetImage('/assets/photo.png'),
                ),
              ),
            ),
            TabsMobile(text: "Home", route: '/'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Works", route: '/works'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Blog", route: '/blog'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "About", route: '/about'),
            SizedBox(
              height: 20.0,
            ),
            TabsMobile(text: "Contact", route: '/contact'),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Urllaunch(
                    svgPath: "assets/instagram.svg",
                    url: "https://www.instagram.com/?hl=fr"),
                Urllaunch(
                    svgPath: "../../assets/github.svg",
                    url: "https://github.com/Harley755"),
                Urllaunch(
                    svgPath: "../../assets/twitter.svg",
                    url: "https://twitter.com/bg_dev2"),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          //  FIRST SECTION
          CircleAvatar(
            radius: 117.0,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 110.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("/assets/photo.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25.0,
                ),
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
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: SansBold("Hello I'm", 15.0),
                    ),
                    SansBold("Brice GOUDALO", 40.0),
                    SansBold("Flutter developer", 40.0),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    SizedBox(
                      width: 40.0,
                    ),
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
                ),
              ],
            ),
          ),
          SizedBox(
            height: 90.0,
          ),

          // SECOND SECTION ABOUT SECTION
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SansBold("About me", 35.0),
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
                SizedBox(height: 10.0),
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
          SizedBox(height: 60.0),

          // THIRD SECTION WHAT I DO
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SansBold("What i do ?", 35.0),
              AnimatedCardWeb(
                imagePath: "../../assets/webL.png",
                text: "Web developement",
                containerWidth: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCardWeb(
                imagePath: "../../assets/app.png",
                text: "App developement",
                fit: BoxFit.contain,
                reverse: true,
                containerWidth: 300.0,
              ),
              SizedBox(height: 35.0),
              AnimatedCardWeb(
                imagePath: "../../assets/firebase.png",
                text: "Back-end developement",
                containerWidth: 300.0,
              ),
              SizedBox(height: 60.0),
              Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  SansBold("Contact me", 35.0),
                  TextForm(
                    text: "First name",
                    containerWidth: widthDevice / 1.4,
                    hinText: "Please type your first name",
                  ),
                  TextForm(
                    text: "Last name",
                    containerWidth: widthDevice / 1.4,
                    hinText: "Please type your last name",
                  ),
                  TextForm(
                    text: "Email",
                    containerWidth: widthDevice / 1.4,
                    hinText: "Please type your email",
                  ),
                  TextForm(
                    text: "Phone number",
                    containerWidth: widthDevice / 1.4,
                    hinText: "Please type your phone number",
                  ),
                  TextForm(
                    text: "Message",
                    containerWidth: widthDevice / 1.4,
                    hinText: "Please type your message",
                    maxLines: 10,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 60.0,
                    minWidth: widthDevice / 2.2,
                    color: Colors.tealAccent,
                    child: SansBold("Submit", 20.0),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          )
        ],
      ),
    );
  }
}

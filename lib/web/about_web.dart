import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
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
    var withDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: DrawersWeb(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: TabsWebList(),
      ),
      body: ListView(
        children: [
          // ABOUT ME, FIRST SECTION
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                      "Hello, I'm Brice GOUDALO. I'm specialize flutter developement",
                      15.0,
                    ),
                    Sans(
                      "I strive to ensure astounding performance with state of",
                      15.0,
                    ),
                    Sans(
                      "The art security for Android, Ios, Web, Mac, Linux and Windows",
                      15.0,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        tealContainer("Flutter"),
                        SizedBox(width: 7.0),
                        tealContainer("Firebase"),
                        SizedBox(width: 7.0),
                        tealContainer("Android"),
                        SizedBox(width: 7.0),
                        tealContainer("Windows"),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/photo.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // WEB DEVELOPMENT, SECOND SECTION
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWeb(
                imagePath: 'assets/webL.png',
                heigth: 250.0,
                containerWidth: 250,
              ),
              SizedBox(
                width: withDevice / 3,
                child: Column(
                  children: [
                    SansBold("Web developement", 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                      "I'm here to build your presence online with state of the art web apps",
                      15.0,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),

          // APP DEVELOPEMENT, THIRD SECTION
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: withDevice / 3,
                child: Column(
                  children: [
                    SansBold("App developement", 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                      "Do you need a high-performance, responsive and beautiful app? Don't worry, I've got you covered.",
                      16.0,
                    ),
                  ],
                ),
              ),
              AnimatedCardWeb(
                imagePath: 'assets/app.png',
                containerWidth: 250.0,
                heigth: 250.0,
                reverse: true,
              ),
            ],
          ),
          SizedBox(height: 20.0),

          // BACK-END DEVELOPMENT, SECOND SECTION
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedCardWeb(
                imagePath: 'assets/firebase.png',
                heigth: 250.0,
                containerWidth: 250.0,
              ),
              SizedBox(
                width: withDevice / 3,
                child: Column(
                  children: [
                    SansBold("Back-end developement", 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                      "Do you want your back-end to be highly scalable and secure ? Let's have a conversation on how can i help you with that.",
                      15.0,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 40.0),
        ],
      ),
    );
  }
}

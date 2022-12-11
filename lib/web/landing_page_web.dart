import 'package:flutter/material.dart';
import 'package:portfolio_web/component.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 74.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 72.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/photo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            SansBold("Brice GOUDALO", 30.0),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Urllaunch(
                    svgPath: "assets/instagram.svg",
                    url: "https://www.instagram.com/?hl=fr"),
                Urllaunch(
                    svgPath: 'assets/github.svg',
                    url: "https://github.com/Harley755"),
                Urllaunch(
                    svgPath: 'assets/twitter.svg',
                    url: "https://twitter.com/bg_dev2"),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb(title: "Home", route: '/'),
            Spacer(),
            TabsWeb(title: "Works", route: '/works'),
            Spacer(),
            TabsWeb(title: "Blog", route: '/blog'),
            Spacer(),
            TabsWeb(title: "About", route: '/about'),
            Spacer(),
            TabsWeb(title: "Contact", route: '/contact'),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          // FIRST PAGE
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                            color: Colors.tealAccent),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: SansBold("Hello I'm", 15)),
                    SizedBox(
                      height: 15.0,
                    ),
                    SansBold("Brice GOUDALO", 55.0),
                    Sans("Flutter developper", 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("bricegoudalo@gmail.com", 15.0)
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("+229 96 20 33 14", 15.0)
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans("Houeyiho, Cotonou Benin", 15.0)
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
                      backgroundImage: AssetImage(' assets/photo.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // SECOND PAGE
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "../../assets/web.jpg",
                  height: widthDevice / 1.9,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold("About me", 40.0),
                    SizedBox(
                      height: 10.0,
                    ),
                    Sans(
                        "Hello I'm Brice GOUDALO, I specialize in flutter developement",
                        15),
                    Sans(
                        "I strive to ensure astounding performance with state of ",
                        15),
                    Sans(
                        "The art security for Andoid, Ios, Mac, Linus and Windows ",
                        15),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7.0),
                            child: Sans("Flutter", 15)),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7.0),
                            child: Sans("Flutter", 15)),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7.0),
                            child: Sans("Android", 15)),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7.0),
                            child: Sans("Ios", 15)),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.all(7.0),
                            child: Sans("Window", 15)),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          //  THIRD SECTION
          Container(
            height: heightDevice / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("What i do ?", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWeb(
                        imagePath: 'assets/webL.png', text: "Web developement"),
                    AnimatedCardWeb(
                      imagePath: 'assets/app.png',
                      text: "App developement",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                        imagePath: 'assets/firebase.png',
                        text: "Back-end developement"),
                  ],
                )
              ],
            ),
          ),

          // FOURTH SECTION
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold("Contact me", 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                            text: "First name",
                            containerWidth: 350,
                            hinText: "Please type your first name"),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                            text: "Email",
                            containerWidth: 350,
                            hinText: "Please type your email"),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                            text: "Last name",
                            containerWidth: 350,
                            hinText: "Please type your last name"),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                            text: "Phone number",
                            containerWidth: 350,
                            hinText: "Please type your phone number"),
                      ],
                    )
                  ],
                ),
                TextForm(
                  text: "Message",
                  containerWidth: widthDevice / 1.5,
                  hinText: "Please type your message",
                  maxLines: 10,
                ),
                MaterialButton(
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 60.0,
                    minWidth: 200.0,
                    color: Colors.tealAccent,
                    child: SansBold("Submit", 20.0),
                    onPressed: () {})
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

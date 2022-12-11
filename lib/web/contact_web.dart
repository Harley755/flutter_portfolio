import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_web/component.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("/assets/photo.png"),
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
                IconButton(
                  onPressed: () async {
                    await await launchUrl(
                      Uri.parse("https://www.instagram.com/?hl=fr"),
                    );
                  },
                  icon: SvgPicture.asset(
                    "assets/instagram.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await await launchUrl(
                      Uri.parse("https://github.com/Harley755"),
                    );
                  },
                  icon: SvgPicture.asset(
                    "../../assets/github.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await await launchUrl(
                      Uri.parse("https://twitter.com/bg_dev2"),
                    );
                  },
                  icon: SvgPicture.asset(
                    "../../assets/twitter.svg",
                    color: Colors.black,
                    width: 35.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 550.0,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(
                size: 25.0,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "../../assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
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
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30.0),
              SansBold("Contact me", 40.0),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextForm(
                        text: "First Name",
                        containerWidth: 350.0,
                        hinText: "Please type first name",
                      ),
                      SizedBox(height: 15.0),
                      TextForm(
                        text: "Email",
                        containerWidth: 350.0,
                        hinText: "Please type email adresse",
                      ),
                      SizedBox(height: 15.0),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextForm(
                        text: "Last Name",
                        containerWidth: 350.0,
                        hinText: "Please type last name",
                      ),
                      SizedBox(height: 15.0),
                      TextForm(
                        text: "Phone number",
                        containerWidth: 350.0,
                        hinText: "Please type phone number",
                      ),
                      SizedBox(height: 15.0),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              TextForm(
                text: "Message",
                containerWidth: widthDevice / 1.5,
                hinText: "Please type message",
                maxLines: 10,
              ),
              SizedBox(height: 20.0),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: 200.0,
                color: Colors.tealAccent,
                child: SansBold("Submit", 20.0),
              ),
              SizedBox(height: 10.0)
            ],
          ),
        ),
      ),
    );
  }
}

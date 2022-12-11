import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
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
                    backgroundImage: AssetImage('/assets/photo.png'),
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
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                  color: Colors.black,
                  size: 35.0,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: AbelCustom(
                      text: "Welcome to my Blog",
                      size: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  background: Image.asset(
                    "../../assets/blog.jpg",
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                ),
                expandedHeight: 400.0,
              ),
            ];
          },
          body: ListView(
            children: [
              BlogPost(),
              BlogPost(),
              BlogPost(),
              BlogPost(),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogPost extends StatefulWidget {
  const BlogPost({super.key});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
  bool expand = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.solid,
            width: 1.0,
            color: Colors.black,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: AbelCustom(
                    text: "Who is Dash ?",
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      expand = !expand;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 7.0),
            Text(
              "As soon as Shams Zakhour started working as a Dart writer at Google in December 2013, she started advocating for a Dart mascot. After documenting Java for 14 years, she had observed how beloved the Java mascot, Duke, had become, and she wanted something similar for Dart.But the idea didn't gain momentum until 2017, when one of the Flutter engineers, Nina Chen, suggested it on an internal mailing list. The Flutter VP at the time, Joshy Joseph, approved the idea and asked the organizer for the 2018 Dart Conference, Linda Rasmussen, to make it happen.Once Shams heard about these plans, she rushed to Linda and asked to own and drive the project to produce the plushies for the conference. Linda had already elicited some design sketches, which she handed off. Starting with the sketches, Shams located a vendor who could work within an aggressive deadline (competing with Lunar New Year), and started the process of creating the specs for the plushy.That's right, Dash was originally a Dart mascot, not a Flutter mascot.",
              style: GoogleFonts.openSans(fontSize: 15.0),
              maxLines: expand == true ? null : 3,
              overflow:
                  expand == true ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

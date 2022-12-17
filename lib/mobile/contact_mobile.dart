import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../component.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  var logger = Logger();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  "assets/contact_image.jpg",
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25.0),
          child: Form(
            key: formKey,
            child: Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              alignment: WrapAlignment.center,
              children: [
                SansBold("Contact me", 35.0),
                TextForm(
                  text: "First Name",
                  containerWidth: widthDevice / 1.4,
                  hinText: "Please type first name",
                  controller: _firstNameController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "First name is empty";
                    }
                  },
                ),
                TextForm(
                  text: "Last Name",
                  containerWidth: widthDevice / 1.4,
                  hinText: "Please type last name",
                  controller: _lastNameController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Last name is empty";
                    }
                  },
                ),
                TextForm(
                  text: "Email adresse",
                  containerWidth: widthDevice / 1.4,
                  hinText: "Please type email adresse",
                  controller: _emailController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Email is empty";
                    }
                  },
                ),
                TextForm(
                  text: "Phone number",
                  containerWidth: widthDevice / 1.4,
                  hinText: "Please type phone number",
                  controller: _phoneController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Phone number is empty";
                    }
                  },
                ),
                TextForm(
                  text: "Message",
                  containerWidth: widthDevice / 1.4,
                  hinText: "Please type message",
                  maxLines: 10,
                  controller: _messageController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Message is empty";
                    }
                  },
                ),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: widthDevice / 2.2,
                  color: Colors.tealAccent,
                  onPressed: () async {
                    logger.d(_firstNameController.text);
                    final addData = new AddDataFirestore();
                    if (formKey.currentState!.validate()) {
                      await addData.addResponse(
                        _firstNameController.text,
                        _lastNameController.text,
                        _emailController.text,
                        _phoneController.text,
                        _messageController.text,
                      );
                      formKey.currentState!.reset();
                      DialogError(context);
                    }
                  },
                  child: SansBold("submit", 20.0),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/component.dart';

import 'package:logger/logger.dart';

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
        endDrawer: DrawersMobile(),
        body: ListView(
          children: [
            //  FIRST SECTION
            CircleAvatar(
              radius: 117.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 110.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/photo.png'),
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
                  imagePath: 'assets/webL.png',
                  text: "Web developement",
                  containerWidth: 300.0,
                ),
                SizedBox(height: 35.0),
                AnimatedCardWeb(
                  imagePath: 'assets/app.png',
                  text: "App developement",
                  fit: BoxFit.contain,
                  reverse: true,
                  containerWidth: 300.0,
                ),
                SizedBox(height: 35.0),
                AnimatedCardWeb(
                  imagePath: 'assets/firebase.png',
                  text: "Back-end developement",
                  containerWidth: 300.0,
                ),
                SizedBox(height: 60.0),
                Form(
                  key: formKey,
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.center,
                    children: [
                      SansBold("Contact me", 35.0),
                      TextForm(
                        text: "First name",
                        containerWidth: widthDevice / 1.4,
                        hinText: "Please type your first name",
                        controller: _firstNameController,
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "First name is empty";
                          }
                        },
                      ),
                      TextForm(
                        text: "Last name",
                        containerWidth: widthDevice / 1.4,
                        hinText: "Please type your last name",
                        controller: _lastNameController,
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "Last name is empty";
                          }
                        },
                      ),
                      TextForm(
                        text: "Email",
                        containerWidth: widthDevice / 1.4,
                        hinText: "Please type your email",
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
                        hinText: "Please type your phone number",
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
                        hinText: "Please type your message",
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
                            if (await addData.addResponse(
                              _firstNameController.text,
                              _lastNameController.text,
                              _emailController.text,
                              _phoneController.text,
                              _messageController.text,
                            )) {
                              formKey.currentState!.reset();
                              DialogError(context, "Message sent successfully");
                            }
                            DialogError(context, "Message failed to sent");
                          }
                        },
                        child: SansBold("Submit", 20.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

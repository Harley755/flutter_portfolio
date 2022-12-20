import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

class TabsWeb extends StatefulWidget {
  final title;
  final route;

  const TabsWeb({super.key, @required this.title, this.route});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isSelected = !isSelected;
          });
          print("enter");
        },
        onExit: (event) {
          setState(() {
            isSelected = !isSelected;
          });
          print("exit");
        },
        child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 100),
            curve: Curves.elasticIn,
            style: isSelected
                ? GoogleFonts.roboto(
                    shadows: [
                      Shadow(color: Colors.black, offset: Offset(0, -8))
                    ],
                    fontSize: 25.0,
                    color: Colors.transparent,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                    decorationColor: Colors.tealAccent,
                  )
                : GoogleFonts.roboto(color: Colors.black, fontSize: 20.0),
            child: Text(
              widget.title,
            )),
      ),
    );
  }
}

// TABSWEBLIST
class TabsWebList extends StatefulWidget {
  const TabsWebList({super.key});

  @override
  State<TabsWebList> createState() => _TabsWebListState();
}

class _TabsWebListState extends State<TabsWebList> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

// TABSMOBILES
class TabsMobile extends StatefulWidget {
  final text;
  final route;

  const TabsMobile({super.key, @required this.text, @required this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}

class SansBold extends StatelessWidget {
  final title;
  final size;

  const SansBold(this.title, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class Sans extends StatelessWidget {
  final title;
  final size;
  const Sans(this.title, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: GoogleFonts.openSans(fontSize: size.toDouble()));
  }
}

class AbelCustom extends StatelessWidget {
  final text;
  final size;
  final color;
  final fontWeight;
  const AbelCustom({
    super.key,
    @required this.text,
    @required this.size,
    this.color,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color == null ? Colors.black : color,
        fontWeight: fontWeight == null ? FontWeight.normal : fontWeight,
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  final text;
  final containerWidth;
  final hinText;
  final maxLines;
  final controller;
  final validator;

  const TextForm({
    super.key,
    @required this.text,
    @required this.containerWidth,
    @required this.hinText,
    this.maxLines,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    var textFormField = TextFormField(
      // inputFormatters: [
      //   LengthLimitingTextInputFormatter(10),
      //   FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
      // ],
      // validator: (value) {
      //   if (RegExp("\\bbrice\\b", caseSensitive: false)
      //       .hasMatch(value.toString())) {
      //     return "Match Found";
      //   }
      //   return null;
      // },
      validator: validator,
      controller: controller,
      maxLines: maxLines == null ? null : maxLines,
      decoration: InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        hintText: hinText,
        hintStyle: GoogleFonts.poppins(fontSize: 14),
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text, 16),
        SizedBox(
          height: 5.0,
        ),
        SizedBox(width: containerWidth, child: textFormField),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;
  final containerWidth;
  final heigth;

  const AnimatedCardWeb(
      {super.key,
      @required this.imagePath,
      this.text,
      this.fit,
      this.reverse,
      this.containerWidth,
      this.heigth});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 4))
        ..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.tealAccent),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.heigth == null ? 200.0 : widget.heigth,
                width: widget.containerWidth == null
                    ? 200.0
                    : widget.containerWidth,
                fit: widget.fit == null ? null : widget.fit,
              ),
              SizedBox(
                height: 10,
              ),
              widget.text == null ? SizedBox() : SansBold(widget.text, 15.0),
            ],
          ),
        ),
      ),
    );
  }
}

class Urllaunch extends StatelessWidget {
  final svgPath;
  final url;
  const Urllaunch({super.key, @required this.svgPath, @required this.url});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
      icon: SvgPicture.asset(
        svgPath,
        color: Colors.black,
        width: 35.0,
      ),
    );
  }
}

class AddDataFirestore {
  var logger = Logger();

  CollectionReference response =
      FirebaseFirestore.instance.collection("messages");

  Future addResponse(final firstName, final lastName, final email,
      final phoneNumber, final message) async {
    return response.add({
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'phone_number': phoneNumber,
      'message': message,
    }).then((value) {
      logger.d("Success");
      return true;
    }).catchError((error) {
      logger.d(error);
      return false;
    });
  }
}

Future DialogError(BuildContext context, String message) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: SansBold(message, 20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;

  const TabsWeb(this.title,{super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
        style: isSelected?
          GoogleFonts.oswald(
            shadows: [
              Shadow(color: Colors.black, offset: Offset(0, -8))
            ],
            fontSize: 25.0,
            color: Colors.transparent,
            decoration: TextDecoration.underline,
            decorationThickness: 2,
            decorationColor: Colors.tealAccent,
          )
          :GoogleFonts.oswald(color: Colors.black, fontSize: 23.0),
        child: Text(
          widget.title,
        )
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final title;
  final size;

  const SansBold(this.title, this.size,{super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold));
  }
}

class Sans extends StatelessWidget {
  final title;
  final size;
  const Sans(this.title, this.size,{super.key});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: GoogleFonts.openSans(fontSize: size));
  }
}

class TextForm extends StatelessWidget {
  final heading;
  final width;
  final hitText;
  final maxLine;

  const TextForm({super.key, @required this.heading, @required this.width, @required this.hitText, this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(heading, 16),
        SizedBox(height: 5.0,),
        SizedBox(
          width: width,
          child: TextFormField(
            validator: (value) {
              
            },
            maxLines: maxLine==null?null:maxLine,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide( color: Colors.teal),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              hintText: hitText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          )
        ),
      ],
    );
  }
}
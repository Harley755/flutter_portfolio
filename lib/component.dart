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
          GoogleFonts.roboto(
            shadows: [
              Shadow(color: Colors.black, offset: Offset(0, -8))
            ],
            fontSize: 25.0,
            color: Colors.transparent,
            decoration: TextDecoration.underline,
            decorationThickness: 2,
            decorationColor: Colors.tealAccent,
          )
          :GoogleFonts.roboto(color: Colors.black, fontSize: 20.0),
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
  final hinText;
  final maxLines;

  const TextForm({super.key, @required this.heading, @required this.width, @required this.hinText, this.maxLines});

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
            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(10),
            //   FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
            // ],
            maxLines: maxLines==null?null:maxLines,
            decoration: InputDecoration(
              focusedErrorBorder:  OutlineInputBorder(
                borderSide: BorderSide( color: Colors.red),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide( color: Colors.teal),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              hintText: hinText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
            validator: (value) {
              if (RegExp("\\bbrice\\b", caseSensitive: false).hasMatch(value.toString())) {
                return "Match Found";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
          )
        ),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  final imagePath;
  final text;
  final fit;
  final reverse;

  const AnimatedCardWeb({super.key, @required this.imagePath, @required this.text, this.fit, this.reverse});

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(vsync: this, duration: Duration(seconds: 4))..repeat(reverse: true);

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
    return SlideTransition(position: _animation, 
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: BorderSide(color: Colors.tealAccent)
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.imagePath, height: 200, width: 200, fit: widget.fit == null ? null : widget.fit,),
              SizedBox(height: 10,),
              SansBold(widget.text, 15.0),
            ],
            
          ),
        ),
      ),
    );
  }
}
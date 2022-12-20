import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_web/routes.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show kIsWeb; // APP SAIT VOUS ROULER SUR WEB OU MOBILE

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyC8bSRF6okVSBzhXCyh6pnCdxWcj7jWUEI",
        authDomain: "flutter-portfolio-a2ea8.firebaseapp.com",
        projectId: "flutter-portfolio-a2ea8",
        storageBucket: "flutter-portfolio-a2ea8.appspot.com",
        messagingSenderId: "640068779558",
        appId: "1:640068779558:web:18351d19ef9fb8e38970e7",
        measurementId: "G-LRBVJCBDYM",
      ),
    );
  } else {
    GoogleFonts.config.allowRuntimeFetching = false;
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}

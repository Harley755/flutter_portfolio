import 'package:flutter/material.dart';
import 'package:portfolio_web/mobile/about_mobile.dart';
import 'package:portfolio_web/mobile/blog_mobile.dart';
import 'package:portfolio_web/mobile/contact_mobile.dart';
import 'package:portfolio_web/mobile/landing_page_mobile.dart';
import 'package:portfolio_web/mobile/works_mobile.dart';
import 'package:portfolio_web/web/about_web.dart';
import 'package:portfolio_web/web/blog_web.dart';
import 'package:portfolio_web/web/contact_web.dart';
import 'package:portfolio_web/web/landing_page_web.dart';
import 'package:portfolio_web/web/works_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return LandingPageWeb();
            } else {
              return LandingPageMobile();
            }
          }),
        );

      case '/works':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return WorksWeb();
            } else {
              return WorksMobile();
            }
          }),
        );

      case '/blog':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return BlogWeb();
            } else {
              return BlogMobile();
            }
          }),
        );

      case '/about':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return AboutWeb();
            } else {
              return AboutMobile();
            }
          }),
        );

      case '/contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return ContactWeb();
            } else {
              return ContactMobile();
            }
          }),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return LandingPageWeb();
              } else {
                return LandingPageMobile();
              }
            },
          ),
        );
    }
  }
}

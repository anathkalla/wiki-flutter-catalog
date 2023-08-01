import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_catalog_flutter/presentation/screens/intro/intro_screen_one.dart';
import 'package:widget_catalog_flutter/presentation/screens/intro/intro_screen_three.dart';
import 'package:widget_catalog_flutter/presentation/screens/intro/intro_screen_two.dart';
import 'package:widget_catalog_flutter/presentation/screens/intro/splash_screen.dart';
import '../../presentation/screens/containment_screen.dart';
import '../../presentation/screens/inputs_screen.dart';
import '../../presentation/screens/navigation_screen.dart';
import '../../presentation/screens/buttons_screen.dart';
import '../../presentation/screens/communication_screen.dart';
import '../../presentation/screens/home_page.dart';
import '../../presentation/screens/page_not_found.dart';
import 'routes_constants.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: RouteConstants.splashScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: SplashScreen());
        },
      ),
      GoRoute(
        path: '/intro-one',
        name: RouteConstants.introScreenOne,
        pageBuilder: (context, state) {
          return const MaterialPage(child: IntroScreenOne());
        },
      ),
      GoRoute(
        path: '/intro-two',
        name: RouteConstants.introScreenTwo,
        pageBuilder: (context, state) {
          return const MaterialPage(child: IntroScreenTwo());
        },
      ),
      GoRoute(
        path: '/intro-last',
        name: RouteConstants.introScreenLast,
        pageBuilder: (context, state) {
          return const MaterialPage(child: IntroScreenThree());
        },
      ),
      GoRoute(
        path: '/home',
        name: RouteConstants.homeScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: MyHomePage());
        },
      ),
      GoRoute(
        path: '/buttons',
        name: RouteConstants.buttonsScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: ButtonsScreen());
        },
      ),
      GoRoute(
        path: '/inputs',
        name: RouteConstants.inputsScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: InputsScreen());
        },
      ),
      GoRoute(
        path: '/containment',
        name: RouteConstants.containmentScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: ContainmentWidgets());
        },
      ),
      GoRoute(
        path: '/navigation',
        name: RouteConstants.navigationScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: NavigationScreen());
        },
      ),
      GoRoute(
        path: '/communication',
        name: RouteConstants.communicationScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: CommunicationScreen());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: PageNotFound());
    },
  );
}

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../screens/authscreens/spalshscreen.dart';
import '../screens/homepage.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static final Handler _splashHandler = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          const SplashScreen());

  static final Handler _mainHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return HomePage(page: params['name'][0]);
  });

  static final Handler _mainHandler2 = Handler(
      handlerFunc: (context, Map<String, dynamic> params) =>
          HomePage(page: params['name'][0]));

  static void setupRouter() {
    router.define(
      '/',
      handler: _splashHandler,
    );
    router.define(
      '/:name',
      handler: _mainHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/:name/:extra',
      handler: _mainHandler2,
      transitionType: TransitionType.fadeIn,
    );

    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
      return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Text(
          "something wrong !!!!!",
          style: TextStyle(color: Colors.red),
        )),
      );
    });
  }
}

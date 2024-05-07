import 'package:autox_global_trade/Authentication/dialog_auth.dart';
import 'package:autox_global_trade/Authentication/providers/auth.dart';
import 'package:autox_global_trade/Authentication/widgets/loading.dart';
import 'package:autox_global_trade/home/home.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class AppScreensController extends StatelessWidget {
  const AppScreensController({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    switch (authProvider.status) {
      case Status.Uninitialized:
        return Loading();
      case Status.Unauthenticated:
      case Status.Authenticating:
        return const AuthDialog();
      case Status.Authenticated:
        return const Home();
      default:
        return const AuthDialog();
    }
  }
}

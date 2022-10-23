import 'package:flutter/material.dart';
import 'package:meeting_game_app/src/ui/screens/login.dart';
import 'package:meeting_game_app/src/ui/screens/register.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'login_screen': ((context) => const LoginScreen()),
    'register_screen': ((context) => const RegisterScreen())
  };
}

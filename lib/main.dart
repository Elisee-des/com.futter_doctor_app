import 'package:flutter/material.dart';
import 'package:flutter_doctor_appointmen_tapp/screens/auth_page.dart';
import 'package:flutter_doctor_appointmen_tapp/screens/main_layout.dart';
import 'package:flutter_doctor_appointmen_tapp/utils/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //This is for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Define ThemeData here
    return MaterialApp(
      navigatorKey: navigatorKey,
      
      title: 'Flutter Doctor App',
      theme: ThemeData(
        //Pre-define input decoration
       inputDecorationTheme: const InputDecorationTheme(
        focusColor: Config.primaryColor,
        border: Config.outlinedBorder,
        focusedBorder: Config.focusBorder,
        errorBorder: Config.errorBorder,
        enabledBorder: Config.outlinedBorder,
        floatingLabelStyle: TextStyle(color: Config.primaryColor),
        prefixIconColor: Colors.black38
       ),
       scaffoldBackgroundColor: Colors.white,
       bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Config.primaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey.shade700,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
          ),
      ),
      initialRoute: '/',
      routes: {
          '/': (context) => const AuthPage(),
          'main': (context) => const MainLayout(),
        },
    );
  }
}
